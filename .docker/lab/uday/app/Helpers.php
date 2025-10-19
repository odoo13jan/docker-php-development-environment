<?php
require 'vendor/autoload.php';
use App\Models\Setting;
use App\Models\Patient;
use App\Models\Group;
use App\Models\Doctor;
use App\Mail\PatientCodeMail;
use App\Mail\TestsNotification;
use App\Mail\ReceiptMail;
use App\Mail\ReportMail;
use App\Mail\ResetPasswordMail;
use Illuminate\Support\Str;
use Endroid\QrCode\QrCode;
use Endroid\QrCode\Writer\PngWriter;
use Illuminate\Support\Facades\Storage;



if (!function_exists("get_currency")) {
    function get_currency()
    {
        if (!(!request()->is("/") && !request()->is("install") && !request()->is("install/*"))) {
            goto C7NPM;
        }
        if (!(!cache()->has("N95T-W9PV-FFTU-3LZA") || cache("N95T-W9PV-FFTU-3LZA") != "N95T-W9PV-FFTU-3LZA")) {
            goto kI6ZG;
        }
        
        kI6ZG:
        C7NPM:
        if (cache()->has("currency")) {
            $currency = cache("currency");
            goto WczHA;
        }
        $setting = setting("info");
        $currency = $setting["currency"];
        cache()->put("currency", $currency);
        WczHA:
        return $currency;
    }
}
if (!function_exists("get_system_date")) {
    function get_system_date($date = '', $format = '')
    {
        if (empty($date)) {
            if (empty($format)) {
                return date("Y-m-d");
            }
            return date($format);
        }
        if (empty($format)) {
            return date("Y-m-d", strtotime($date));
        }
        return date($format, strtotime($date));
    }
}
if (!function_exists("formated_price")) {
    function formated_price($price)
    {
        if (!(!request()->is("/") && !request()->is("install") && !request()->is("install/*"))) {
            goto t62vQ;
        }
        if (!(!cache()->has("NT-W9PV-FFTU-3LZA") || cache("N95T-W9PV-FFTU-3LZA") != "NT-W9PV-FFTUkLZA")) {
            goto TITkB;
        }
        
        TITkB:
        t62vQ:
        if (cache()->has("currency")) {
            return $price . " " . cache()->get("currency");
        }
        $setting = Setting::where("key", "info")->first()["value"];
        $setting = json_decode($setting, true);
        $currency = $setting["currency"];
        cache()->put("currency", $currency);
        return $currency;
    }
}
if (!function_exists("send_sms")) {
    function send_sms($to, $message)
    {
        $sms_setting = setting("sms");
        if ($sms_setting["gateway"] == "nexmo") {
            if (!(!empty($sms_setting["nexmo"]["key"]) && !empty($sms_setting["nexmo"]["secret"]))) {
                goto jcDVx;
            }
            $basic = new \Vonage\Client\Credentials\Basic($sms_setting["nexmo"]["key"], $sms_setting["nexmo"]["secret"]);
            $client = new \Vonage\Client($basic);
            $response = $client->sms()->send(new \Vonage\SMS\Message\SMS($to, BRAND_NAME, $message));
            jcDVx:
            goto SYqb2;
        }
        if ($sms_setting["gateway"] == "twilio") {
            if (!(!empty($sms_setting["twilio"]["sid"]) && !empty($sms_setting["twilio"]["token"]) && !empty($sms_setting["twilio"]["from"]))) {
                goto W1xEZ;
            }
            $sid = $sms_setting["sid"];
            $token = $sms_setting["token"];
            $client = new \Twilio\Rest\Client($sid, $token);
            try {
                $client->messages->create($to, ["from" => $sms_setting["from"], "body" => $message]);
            } catch (\Exception $e) {
            }
            W1xEZ:
            goto SYqb2;
        }
        if ($sms_setting["gateway"] == "localText" && !empty($sms_setting["localText"]["key"]) && !empty($sms_setting["localText"]["sender"])) {
            $apiKey = urlencode($sms_setting["localText"]["key"]);
            $numbers = array($to);
            $sender = urlencode($sms_setting["localText"]["sender"]);
            $message = rawurlencode($message);
            $numbers = implode(",", $numbers);
            $data = array("apikey" => $apiKey, "numbers" => $numbers, "sender" => $sender, "message" => $message);
            $ch = curl_init("https://api.textlocal.in/send/");
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $response = curl_exec($ch);
            curl_close($ch);
            goto SYqb2;
        }
        if ($sms_setting["gateway"] == "infobip" && !empty($sms_setting["infobip"]["base_url"]) && !empty($sms_setting["infobip"]["from"]) && !empty($sms_setting["infobip"]["key"])) {
            $curl = curl_init();
            curl_setopt_array($curl, array(CURLOPT_URL => $sms_setting["infobip"]["base_url"] . "/sms/2/text/advanced", CURLOPT_RETURNTRANSFER => true, CURLOPT_ENCODING => '', CURLOPT_MAXREDIRS => 10, CURLOPT_TIMEOUT => 0, CURLOPT_FOLLOWLOCATION => true, CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1, CURLOPT_CUSTOMREQUEST => "POST", CURLOPT_POSTFIELDS => '{"messages":[{"from":"" . $sms_setting["infobip"]["from"] . "","destinations":[{"to":"" . $to . ""}],"text":"" . $message . ""}]}', CURLOPT_HTTPHEADER => array("Authorization: App " . $sms_setting["infobip"]["key"], "Content-Type: application/json", "Accept: application/json")));
            $response = curl_exec($curl);
            curl_close($curl);
            goto DwYHg;
        }
        DwYHg:
        SYqb2:
    }
}
if (!function_exists("send_notification")) {
    function send_notification($type, $patient = null, $group = null, $user = null)
    {
        $email_settings = setting("emails");
        if (isset($email_settings[$type]) && $email_settings[$type]["active"] == true && isset($patient)) {
            if (empty($patient["email"])) {
                goto cQMWv;
            }
            if ($type == "patient_code") {
                try {
                    \Mail::to($patient["email"])->send(new PatientCodeMail($patient));
                } catch (\Exception $e) {
                }
                goto wBUi1;
            }
            if ($type == "receipt") {
                try {
                    \Mail::to($patient["email"])->send(new ReceiptMail($patient, $group));
                } catch (\Exception $e) {
                }
                goto wBUi1;
            }
            if ($type == "report") {
                try {
                    \Mail::to($patient["email"])->send(new ReportMail($patient, $group));
                } catch (\Exception $e) {
                }
                goto sZIEv;
            }
            sZIEv:
            wBUi1:
            cQMWv:
            goto n6pqe;
        }
        if (isset($email_settings[$type]) && $email_settings[$type]["active"] == true && isset($user)) {
            if (empty($user["email"])) {
                goto VpC3T;
            }
            if (!($type == "reset_password")) {
                goto dJLda;
            }
            try {
                \Mail::to($user["email"])->send(new ResetPasswordMail($user));
            } catch (\Exception $e) {
            }
            dJLda:
            VpC3T:
            goto wli5u;
        }
        wli5u:
        n6pqe:
        $sms_settings = setting("sms");
        if (!(isset($sms_settings[$type]) && $sms_settings[$type]["active"] == true)) {
            goto ZJF2m;
        }
        if (empty($patient["phone"])) {
            goto cVReA;
        }
        $message = str_replace(["{patient_code}", "{patient_name}"], [$patient["code"], $patient["name"]], $sms_settings[$type]["message"]);
        send_sms($patient["phone"], $message);
        cVReA:
        ZJF2m:
    }
}
if (!function_exists("setting")) {
    function setting($key)
    {
        if (!(!request()->is("/") && !request()->is("install") && !request()->is("install/*"))) {
            goto T7QQo;
        }
        if (!(!cache()->has("N95T-W9PV-FFTU-3LZA") || cache("N95T-W9PV-FFTUkLZA") != "N95T-W9PV-FFTU-3LZA")) {
            goto Vc0KK;
        }
        
        Vc0KK:
        T7QQo:
        $setting = Setting::where("key", $key)->first();
        $setting = json_decode($setting["value"], true);
        return $setting;
    }
}


if (!function_exists("shortenUrl")) {
    function shortenUrl($longUrl) {
        $start = microtime(true);
        $timings = ['start' => $start];

        // Check cache
        $cacheKey = 'short_url_' . md5($longUrl);
        $cachedResult = cache()->get($cacheKey);
        $timings['cache_check'] = microtime(true) - $start;
        if ($cachedResult) {
            Log::info('shortenUrl cache hit', [
                'url' => $longUrl,
                'total_time' => number_format($timings['cache_check'], 6),
                'timings' => $timings
            ]);
            return $cachedResult;
        }

        // Check database
        $existing = DB::table('short_urls')->select('short_code')->where('long_url', $longUrl)->first();
        $timings['db_check'] = microtime(true) - $start - $timings['cache_check'];
        if ($existing) {
            $qrCacheKey = 'qr_base64_' . $existing->short_code;
            $qrBase64 = cache()->get($qrCacheKey);
            $timings['qr_cache_check'] = microtime(true) - $start - array_sum($timings);
            if (!$qrBase64) {
                try {
                    $shortUrl = url($existing->short_code);
                    $qrCode = QrCode::create($shortUrl)->setSize(100)->setMargin(2);
                    $writer = new PngWriter();
                    $resultQr = $writer->write($qrCode);
                    $qrBase64 = base64_encode($resultQr->getString());
                    cache()->put($qrCacheKey, $qrBase64, now()->addHours(24));
                    $timings['qr_generate'] = microtime(true) - $start - array_sum($timings);
                } catch (\Exception $e) {
                    Log::error('Failed to generate QR code: ' . $e->getMessage());
                    $qrBase64 = null;
                }
            }
            $result = [
                'short_url' => url($existing->short_code),
                'qr_base64' => $qrBase64
            ];
            cache()->put($cacheKey, $result, now()->addHours(24));
            Log::info('shortenUrl database hit', [
                'url' => $longUrl,
                'total_time' => number_format(microtime(true) - $start, 6),
                'timings' => $timings
            ]);
            return $result;
        }

        // Generate short code
        $shortCode = substr(base_convert(crc32($longUrl . microtime(true)), 10, 36), 0, 6);
        $attempts = 0;
        while (DB::table('short_urls')->where('short_code', $shortCode)->exists() && $attempts < 3) {
            $shortCode = Str::random(6);
            $attempts++;
        }
        $timings['short_code_generate'] = microtime(true) - $start - array_sum($timings);
        if ($attempts >= 3) {
            Log::error('Failed to generate unique short code for URL: ' . $longUrl);
            return ['error' => 'Unable to generate unique short code'];
        }

        // Store mapping
        try {
            DB::table('short_urls')->insert([
                'long_url' => $longUrl,
                'short_code' => $shortCode,
                'created_at' => now(),
            ]);
            $timings['db_insert'] = microtime(true) - $start - array_sum($timings);
        } catch (\Exception $e) {
            Log::error('Failed to insert short URL: ' . $e->getMessage());
            return ['error' => 'Database error'];
        }

        // Generate QR code
        $shortUrl = url($shortCode);
        try {
            $qrCode = QrCode::create($shortUrl)->setSize(100)->setMargin(2);
            $writer = new PngWriter();
            $resultQr = $writer->write($qrCode);
            $qrBase64 = base64_encode($resultQr->getString());
            cache()->put('qr_base64_' . $shortCode, $qrBase64, now()->addHours(24));
            $timings['qr_generate_new'] = microtime(true) - $start - array_sum($timings);
        } catch (\Exception $e) {
            Log::error('Failed to generate QR code: ' . $e->getMessage());
            $qrBase64 = null;
        }

        $result = [
            'short_url' => $shortUrl,
            'qr_base64' => $qrBase64
        ];

        cache()->put($cacheKey, $result, now()->addHours(24));
        Log::info('shortenUrl generated new short URL and QR code', [
            'url' => $longUrl,
            'total_time' => number_format(microtime(true) - $start, 6),
            'timings' => $timings
        ]);
        return $result;
    }
}

if (!function_exists("generate_pdf")) {
    function generate_pdf($data = '', $type = 1)
    {
        $total_start = microtime(true);
        $timings = [
            'initial_checks' => 0,
            'settings_retrieval' => 0,
            'filename_generation' => 0,
            'url_shortening' => 0,
            'pdf_loading' => 0,
            'pdf_saving' => 0,
        ];

        $start = microtime(true);
        if (!(!request()->is('/') && !request()->is('install') && !request()->is('install/*'))) {
            goto rm0TL;
        }
        if (!(!cache()->has('N95T-W9PV-FFTUkLZA') || cache('N95T-W9PV-FFTU-3LZA') != 'NT-W9PV-FFTU-3LZA')) {
            goto rm0TL;
        }
        rm0TL:
        $timings['initial_checks'] = microtime(true) - $start;

        $start = microtime(true);
        $reports_settings = setting('reports');
        $info_settings = setting('info');
        $barcode_settings = setting('barcode');
        $timings['settings_retrieval'] = microtime(true) - $start;

        $start = microtime(true);
        $pdf_name = sprintf('custom_%d_%s.pdf', $type, bin2hex(random_bytes(4))); // Faster unique ID
        $timings['filename_generation'] = microtime(true) - $start;

        switch ($type) {
            case 1:
                $start = microtime(true);
                $pdf_name = preg_replace('/[^A-Za-z0-9_-]/', '_', $data['group']['branch']['name'] ?? 'default') . '_' .
                            preg_replace('/[^A-Za-z0-9_-]/', '_', $data['group']['patient']['name'] ?? 'default') . '_' .
                            preg_replace('/[^A-Za-z0-9_-]/', '_', date('Ymd_His')) . '.pdf';
                $longUrl = url('uploads/pdf/' . $pdf_name);
                $result = shortenUrl($longUrl);
                
                $shortUrl = $result['short_url'] ?? $longUrl;
                $qrBase64 = $result['qr_base64'] ?? null;
                if (isset($result['error'])) {
                    Log::error('Failed to shorten URL: ' . $result['error']);
                }
                $timings['url_shortening'] = microtime(true) - $start;

                $start = microtime(true);
                $group = $data['group'] ?? [];
                $categories = $data['categories'] ?? [];
                $pdf = PDF::loadView('pdf.report', compact('group', 'categories', 'reports_settings', 'info_settings', 'type', 'barcode_settings', 'pdf_name', 'shortUrl', 'qrBase64'));
                $timings['pdf_loading'] = microtime(true) - $start;
                break;
            case 2:
                $start = microtime(true);
                $group = $data;
                $pdf = PDF::loadView('pdf.receipt', compact('group', 'reports_settings', 'info_settings', 'type', 'barcode_settings'));
                $timings['pdf_loading'] = microtime(true) - $start;
                break;
            case 3:
                $start = microtime(true);
                $pdf = PDF::loadView('pdf.accounting', compact('data', 'reports_settings', 'info_settings', 'type'));
                $timings['pdf_loading'] = microtime(true) - $start;
                break;
            case 4:
                $start = microtime(true);
                $pdf = PDF::loadView('pdf.doctor_report', compact('data', 'reports_settings', 'info_settings', 'type'));
                $timings['pdf_loading'] = microtime(true) - $start;
                break;
            case 5:
                $start = microtime(true);
                $pdf = PDF::loadView('pdf.supplier_report', compact('data', 'reports_settings', 'info_settings', 'type'));
                $timings['pdf_loading'] = microtime(true) - $start;
                break;
            case 6:
                $start = microtime(true);
                $pdf = PDF::loadView('pdf.purchase_report', compact('data', 'reports_settings', 'info_settings', 'type'));
                $timings['pdf_loading'] = microtime(true) - $start;
                break;
            case 7:
                $start = microtime(true);
                $group = $data;
                $pdf = PDF::loadView('pdf.working_paper', compact('data', 'group', 'reports_settings', 'info_settings', 'type'));
                $timings['pdf_loading'] = microtime(true) - $start;
                break;
        }

        $start = microtime(true);
        $pdf->save('uploads/pdf/' . $pdf_name);
        $timings['pdf_saving'] = microtime(true) - $start;

        $total_time = microtime(true) - $total_start;
        Log::info("PDF generation (type: $type, file: $pdf_name) timings:", [
            'total_time' => number_format($total_time, 6),
            'initial_checks' => number_format($timings['initial_checks'], 6),
            'settings_retrieval' => number_format($timings['settings_retrieval'], 6),
            'filename_generation' => number_format($timings['filename_generation'], 6),
            'url_shortening' => number_format($timings['url_shortening'], 6),
            'pdf_loading' => number_format($timings['pdf_loading'], 6),
            'pdf_saving' => number_format($timings['pdf_saving'], 6),
        ]);

        return url('uploads/pdf/' . $pdf_name);
    }
}
if (!function_exists("generate_barcode")) {
    function generate_barcode($group_id)
    {
        $barcode = mt_rand(1000, 9999) . $group_id;
        $exist = Group::where("barcode", $barcode)->count();
        if (!$exist) {
            goto Ntd18;
        }
        generate_barcode($group_id);
        Ntd18:
        Group::where("id", $group_id)->update(["barcode" => $barcode]);
    }
}
if (!function_exists("print_barcode")) {
    function print_barcode($group, $number)
    {
        $pdf_name = "barcode.pdf";
        $barcode_settings = setting("barcode");
        $pdf = PDF::loadView("pdf.barcode", compact("group", "number", "barcode_settings"), [], ["format" => [$barcode_settings["width"], $barcode_settings["height"]]]);
        $pdf->save("uploads/pdf/barcode.pdf");
        return url("uploads/pdf/barcode.pdf");
    }
}
if (!function_exists("print_bulk_barcode")) {
    function print_bulk_barcode($groups)
    {
        $pdf_name = "barcode.pdf";
        $barcode_settings = setting("barcode");
        $pdf = PDF::loadView("pdf.bulk_barcode", compact("groups", "barcode_settings"), [], ["format" => [$barcode_settings["width"], $barcode_settings["height"]]]);
        $pdf->save("uploads/pdf/barcode.pdf");
        return url("uploads/pdf/barcode.pdf");
    }
}
if (!function_exists("print_bulk_working_paper")) {
    function print_bulk_working_paper($groups)
    {
        $reports_settings = setting("reports");
        $info_settings = setting("info");
        $type = 7;
        $pdf_name = "working_paper.pdf";
        $pdf = PDF::loadView("pdf.bulk_working_paper", compact("groups", "reports_settings", "info_settings", "type"));
        $pdf->save("uploads/pdf/working_paper.pdf");
        return url("uploads/pdf/working_paper.pdf");
    }
}
if (!function_exists("check_group_done")) {
    function check_group_done($group_id)
    {
        $group = Group::with(["tests", "cultures"])->where("id", $group_id)->first();
        $done = true;
        if (!isset($group)) {
            goto WaHu9;
        }
        foreach ($group["all_tests"] as $test) {
            if ($test["done"]) {
                goto dWIHQ;
            }
            $done = false;
            dWIHQ:
        }
        foreach ($group["all_cultures"] as $culture) {
            if ($culture["done"]) {
                goto ptnFU;
            }
            $done = false;
            ptnFU:
        }
        WaHu9:
        $group->update(["done" => $done]);
        return $done;
    }
}
if (!function_exists("group_test_calculations")) {
    function group_test_calculations($id)
    {
        $group = Group::with("tests", "cultures", "contract")->where("id", $id)->first();
        $subtotal = 0;
        $paid = 0;
        $doctor_commission = 0;
        if (!isset($group["tests"])) {
            goto PwrfP;
        }
        foreach ($group["tests"] as $test) {
            $subtotal += $test["price"];
        }
        PwrfP:
        if (!isset($group["cultures"])) {
            goto wKstp;
        }
        foreach ($group["cultures"] as $culture) {
            $subtotal += $culture["price"];
        }
        wKstp:
        if (!isset($group["packages"])) {
            goto L2nzd;
        }
        foreach ($group["packages"] as $package) {
            $subtotal += $package["price"];
        }
        L2nzd:
        if (!count($group["payments"])) {
            goto KnSDF;
        }
        foreach ($group["payments"] as $payment) {
            $paid += $payment["amount"];
        }
        KnSDF:
        $total = $subtotal - $group["discount"];
        $due = $total - $paid;
        if (!isset($group["doctor"])) {
            goto YSCVb;
        }
        $doctor_commission = $paid * $group["doctor"]["commission"] / 100;
        YSCVb:
        $group->update(["subtotal" => $subtotal, "discount" => $group["discount"], "total" => $total, "paid" => $paid, "due" => $due, "doctor_commission" => $doctor_commission]);
    }
}
if (!function_exists("patient_code")) {
    function patient_code($patient_id)
    {
        $code = mt_rand(1000, 9999) . $patient_id;
        $exist = Patient::where("code", $code)->count();
        if (!$exist) {
            goto iIYXC;
        }
        patient_code($patient_id);
        iIYXC:
        Patient::where("id", $patient_id)->update(["code" => $code]);
    }
}
if (!function_exists("doctor_code")) {
    function doctor_code($doctor_id)
    {
        $code = mt_rand(1000, 9999) . $doctor_id;
        $exist = Doctor::where("code", $code)->count();
        if (!$exist) {
            goto FlR_E;
        }
        doctor_code($doctor_id);
        FlR_E:
        Doctor::where("id", $doctor_id)->update(["code" => $code]);
    }
}
if (!function_exists("whatsapp_notification")) {
    function whatsapp_notification($group, $type)
    {
        $whatsapp = setting("whatsapp");
        if ($type == "receipt") {
            $message = str_replace(["{patient_name}", "{receipt_link}"], [$group["patient"]["name"], $group["receipt_pdf"]], $whatsapp["receipt"]["message"]);
            $url = "https://wa.me/+91" . $group["patient"]["phone"] . "?text=" . $message;
            return $url;
        }
        if ($type == "report") {
            $message = str_replace(["{patient_name}", "{report_link}"], [$group["patient"]["name"], $group["report_pdf"]], $whatsapp["report"]["message"]);
            $url = "https://wa.me/+91" . $group["patient"]["phone"] . "?text=" . $message;
            return $url;
        }
        HdCiL:
    }
}
