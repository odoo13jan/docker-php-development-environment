<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>
        @yield('title')
    </title>
    <style>
        @if($type==3||$type==4||$type==5||$type==6||$type==7)
        @page {
                margin-top: {{$reports_settings['margin-top']}}px;
                margin-right: {{$reports_settings['margin-right']}}px;
                margin-left: {{$reports_settings['margin-left']}}px;
                margin-bottom: {{$reports_settings['margin-bottom']}}px;
            }
        @else
            @page {
                header: page-header;
                footer: page-footer;
                
                /*margin-left: {{$reports_settings['margin-left']}}px;*/
                /*margin-right: {{$reports_settings['margin-right']}}px;*/
                
                /*margin-top: {{$reports_settings['content-margin-top']}}px;*/
                /*margin-header: {{$reports_settings['margin-top']}}px;*/

                /*margin-bottom: {{$reports_settings['content-margin-bottom']}}px;*/
                /*margin-footer: {{$reports_settings['margin-bottom']}}px;*/
                
                @if(request()->has('no_header_footer'))
                    margin-left: {{$reports_settings['margin-left']}}px;
                    margin-right: {{$reports_settings['margin-right']}}px;
                    
                    margin-top: {{$reports_settings['content-margin-top']}}px;
                    margin-header: {{$reports_settings['margin-top'] + 130 }}px;
    
                    margin-bottom: {{$reports_settings['content-margin-bottom']}}px;
                    margin-footer: {{$reports_settings['margin-bottom'] + 160}}px;
                @else
                    margin-left: {{$reports_settings['margin-left']}}px;
                    margin-right: {{$reports_settings['margin-right']}}px;
                    
                    margin-top: {{$reports_settings['content-margin-top']}}px;
                    margin-header: {{$reports_settings['margin-top'] }}px;
    
                    margin-bottom: {{$reports_settings['content-margin-bottom']}}px;
                    margin-footer: {{$reports_settings['margin-bottom']}}px;
                @endif

                @if($group['branch']['show_watermark_image'])
                    /*background:url("{{url('uploads/branches/'.$group['branch']['watermark_image'])}}") no-repeat;*/
                    background: url("{{ asset('uploads/branches/' . $group['branch']['watermark_image']) }}") no-repeat;

                    background-position: center;
                @endif
            }
        @endif

        .table-bordered {
            border: 1px solid #dee2e6;
            border-collapse: collapse;
            background-color: white!important;
        }

        .table-bordered,
        .table-bordered td {
            border: 1px solid #dee2e6;
        }

        .table-bordered thead th,
        .table-bordered thead td {
            border-bottom-width: 2px;
        }  

        .table-bordered th,
        .table-bordered td {
            border: 1px solid #ddd !important;
        }
        table{
            width: 100%;
            border-collapse: collapse;
        }
        table td,th{
            padding: 5px;
        }
        .title{
            background-color: #ddd;
        }
        .branch_name{
            color:{{$reports_settings['branch_name']['color']}}!important;
            font-size:{{$reports_settings['branch_name']['font-size']}}!important;
            font-family:{{$reports_settings['branch_name']['font-family']}}!important;
        }
        .branch_info{
            color:{{$reports_settings['branch_info']['color']}}!important;
            font-size:{{$reports_settings['branch_info']['font-size']}}!important;
            font-family:{{$reports_settings['branch_info']['font-family']}}!important;
        }
        .title{
            color:{{$reports_settings['patient_title']['color']}}!important;
            font-size:{{$reports_settings['patient_title']['font-size']}}!important;
            font-family:{{$reports_settings['patient_title']['font-family']}}!important;
        }
        .data{
            color:{{$reports_settings['patient_data']['color']}}!important;
            font-size:{{$reports_settings['patient_data']['font-size']}}!important;
            font-family:{{$reports_settings['patient_data']['font-family']}}!important;
        }
        .header{
            border:{{$reports_settings['report_header']['border-width']}} solid {{$reports_settings['report_header']['border-color']}};
            background-color:{{$reports_settings['report_header']['background-color']}};
            text-align:{{$reports_settings['report_header']['text-align']}}!important;
        }
        .footer{
            border:{{$reports_settings['report_footer']['border-width']}} solid {{$reports_settings['report_footer']['border-color']}};
            background-color:{{$reports_settings['report_footer']['background-color']}};
            color:{{$reports_settings['report_footer']['color']}}!important;
            font-size:{{$reports_settings['report_footer']['font-size']}}!important;
            font-family:{{$reports_settings['report_footer']['font-family']}}!important;
            text-align:{{$reports_settings['report_footer']['text-align']}}!important;
        }
        .signature{
            color:{{$reports_settings['signature']['color']}}!important;
            font-size:{{$reports_settings['signature']['font-size']}}!important;
            font-family:{{$reports_settings['signature']['font-family']}}!important;
        }
        @if(session('rtl'))
            .pdf-header{
                direction:rtl;
            }
        @endif
    </style>

</head>

<body>

    @if( $type!==3&&$type!==4&&$type!==5&&$type!==6&&$type!==7)
        <htmlpageheader name="page-header">
            
            @if(!request()->has('no_header_footer') && $reports_settings['show_header']&&isset($group['branch']))
                @if($group['branch']['show_header_image'])
                    <table width="100%" style="padding:0px">
                        <tbody>
                            <tr>
                                <td align="center" style="padding:0px">
                                    <img src="{{ asset('uploads/branches/' . $group['branch']['header_image']) }}" alt="" max-height="200">
                                    
                                </td>
                            </tr>
                        </tbody>
                    </table>
                @else
                
                @endif
            @endif

            @if(isset($group['patient']))
                
                
                <table width="100%" style="border-collapse: collapse; font-family: Arial, sans-serif; font-size: 13px;">
                    <tr>
                        {{-- Column 1: Patient Info (with .title and .data) + QR --}}
                        <td width="33%" style="padding: 10px;">
                            <table width="100%">
                                <tr>
                                    {{-- Patient Info --}}
                                    <td style="vertical-align: top;">
                                        <strong>{{ $group['patient']['name'] ?? '' }}</strong><br>
                                        Age : {{ $group['patient']['age'] ?? '' }}<br>
                                        Sex : {{ $group['patient']['gender'] ?? '' }}<br>
                                        PID : {{ $group['patient']['code'] ?? '' }}<br>
                                        M.No: {{ $group['patient']['phone'] }}
                                    </td>
                
                                    
                                    {{-- QR Code beside info --}}
                                    <td style="text-align: center; vertical-align: middle; padding-left: 10px;">
                                        {{-- QR Code beside info --}}
                                    @if (!empty($qrBase64))
                                        <img src="data:image/png;base64,{{ $qrBase64 }}" 
                                             alt="QR Code" 
                                             style="max-height: {{ $reports_settings['qrcode-dimension'] ?? '80px' }}; display: block; margin: 0 auto;">
                                    @endif
                                    </td>
                                    
                                </tr>
                            </table>
                        </td>
                
                        {{-- Column 2: Sample Location + Ref Doctor --}}
                        <td width="32%" style="padding: 10px; border-left: 1px solid #ccc; border-right: 1px solid #ccc;">
                            <strong>Sample Collected At:</strong>
                            <br>{{ isset($group['branch']['name']) ? $group['branch']['name'] : ' Main Branch' . '---' }}<br><br>
                            Ref. By: <strong>{{ $group['doctor']['name'] ?? '' }}</strong>
                        </td>
                
                        {{-- Column 3: Barcode + Timestamps --}}
                        <td width="35%" style="padding: 10px; text-align: left;">
                                        <table cellspacing="0" cellpadding="0" style="line-height: 1; margin: 0; padding: 0;">
                                <tr>
                                    <td style="text-align: center; padding: 0; margin: 0; line-height: 1;">
                                        <img src="data:image/png;base64,{{ DNS1D::getBarcodePNG($group['barcode'], $barcode_settings['type']) }}"
                                             alt="Barcode" width="180" style="display: block; margin: 0; padding: 0; line-height: 1;">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center; font-size: 8px; padding: 0; margin: 0; line-height: 1;">
                                        {{ $group['barcode'] }}
                                    </td>
                                </tr>
                            </table>
                
                            <strong>Registered on: &nbsp;</strong> {{ date('d-m-Y H:i A',strtotime($group['created_at'])) }}<br>
                            
                            <strong>Collected on:&nbsp;&nbsp;</strong> {{ date('d-m-Y H:i A',strtotime($group['sample_collection_date'])) }} <br>
                            <strong>Reported on:&nbsp;&nbsp;</strong> {{ date('d-m-Y H:i A', strtotime($group['reported_date'] ?? now())) }}
                            
                        </td>
                    </tr>
                </table>
            @endif

        </htmlpageheader>
    @endif
    
    @yield('content')
   
    <htmlpagefooter name="page-footer" class="page-footer">
        @if($type==1)
            @if($reports_settings['show_signature']||$reports_settings['show_qrcode'])
            <table>
                <tbody>
                    
                    <tr>
                        <td width="20%" align="center">
                            
                        </td>
                        <td width="60%"></td>
                        <td width="20%" align="center">
                            @if($reports_settings['show_signature'])
                                @if(!empty($group['signed_by']))
                                    <p>
                                        <img src="{{ asset('uploads/signature/' . $group['signed_by_user']['signature']) }}" alt="" max-height="{{$reports_settings['qrcode-dimension']}}">
                                             
                                    </p>
                                @endif
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="center">
                            
                        </td>
                        <td width="60%"></td>
                        <td width="20%" align="center">
                            @if($reports_settings['show_signature'])
                                <p class="signature">
                                    {{__('Lab Incharge')}}
                                </p>
                            @endif
                        </td>
                    </tr>
                </tbody>
            </table>
            @endif
        @endif
        @if($reports_settings['show_footer'])
            @if(!request()->has('no_header_footer') && $type==1||$type==2)
                @if($group['branch']['show_footer_image'])
                    <img src="{{ asset('uploads/branches/' . $group['branch']['footer_image']) }}" alt="" max-height="200">
                         
                @else
                    <table width="100%">
                        <tbody>
                            <tr>
                                <td class="footer">
                                    {!! str_replace(["\r\n", "\n\r", "\r", "\n"], "<br>", $group['branch']['report_footer'])!!}
                                </td>   
                            </tr>
                        </tbody>
                    </table>
                @endif
            @endif
        @endif
    </htmlpagefooter>

</body>

</html>