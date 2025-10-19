```
@extends('layouts.pdf')

@section('title')
    {{__('Report')}}-#{{$group['id']}}-{{date('Y-m-d')}}
@endsection

@section('content')

<style>
    .test_title {
        font-size: 20px;
        background-color: #dddddd;
        border: 1px solid black !important;
    }
    .bold-text {
        font-weight: bold;
    }
    .beak-page {
        page-break-inside: avoid !important;
    }
    .subtitle {
        font-size: 15px;
    }
    .test {
        margin-top: 20px;
        /* page-break-inside: avoid !important; Prevent page breaks within a test table */
    }
    .transparent {
        border-color: white;
    }
    .transparent th {
        border-color: white;
    }
    .test_head td, th {
        border: 1px solid #dee2e6;
    }
    .no-border {
        border-color: white;
    }
    .comment tr th, .comment tr td {
        border-color: white !important;
        vertical-align: top !important;
        text-align: left;
        padding: 0px !important;
    }
    .sensitivity {
        margin-top: 20px;
       /* page-break-inside: avoid !important;  Prevent page breaks within sensitivity table */
    }
    /* Dynamic styles from report settings */
    .test_title {
        color: {{$reports_settings['test_title']['color']}} !important;
        font-size: {{$reports_settings['test_title']['font-size']}}px !important;
        font-family: {{$reports_settings['test_title']['font-family']}} !important;
    }
    .test_name {
        color: {{$reports_settings['test_name']['color']}} !important;
        font-size: {{$reports_settings['test_name']['font-size']}}px !important;
        font-family: {{$reports_settings['test_name']['font-family']}} !important;
    }
    .test_head th {
        color: {{$reports_settings['test_head']['color']}} !important;
        font-size: {{$reports_settings['test_head']['font-size']}}px !important;
        font-family: {{$reports_settings['test_head']['font-family']}} !important;
    }
    .unit {
        color: {{$reports_settings['unit']['color']}} !important;
        font-size: {{$reports_settings['unit']['font-size']}}px !important;
        font-family: {{$reports_settings['unit']['font-family']}} !important;
    }
    .reference_range {
        color: {{$reports_settings['reference_range']['color']}} !important;
        font-size: {{$reports_settings['reference_range']['font-size']}}px !important;
        font-family: {{$reports_settings['reference_range']['font-family']}} !important;
    }
    .result {
        color: {{$reports_settings['result']['color']}} !important;
        font-size: {{$reports_settings['result']['font-size']}}px !important;
        font-family: {{$reports_settings['result']['font-family']}} !important;
    }
    .status {
        color: {{$reports_settings['status']['color']}} !important;
        font-size: {{$reports_settings['status']['font-size']}}px !important;
        font-family: {{$reports_settings['status']['font-family']}} !important;
    }
    .comment th, .comment td {
        color: {{$reports_settings['comment']['color']}} !important;
        font-size: {{$reports_settings['comment']['font-size']}}px !important;
        font-family: {{$reports_settings['comment']['font-family']}} !important;
    }
    .antibiotic_name {
        color: {{$reports_settings['antibiotic_name']['color']}} !important;
        font-size: {{$reports_settings['antibiotic_name']['font-size']}}px !important;
        font-family: {{$reports_settings['antibiotic_name']['font-family']}} !important;
    }
    .sensitivity {
        color: {{$reports_settings['sensitivity']['color']}} !important;
        font-size: {{$reports_settings['sensitivity']['font-size']}}px !important;
        font-family: {{$reports_settings['sensitivity']['font-family']}} !important;
    }
    .commercial_name {
        color: {{$reports_settings['commercial_name']['color']}} !important;
        font-size: {{$reports_settings['commercial_name']['font-size']}}px !important;
        font-family: {{$reports_settings['commercial_name']['font-family']}} !important;
    }
    .note-editor .note-status-output {
        display: none;
    }
</style>

<div class="printable">
    <!-- Initialize category counter -->
    @php 
        $count_categories = 0;
    @endphp

    <!-- Loop through each category -->
    @foreach($categories as $category)
        @if(count($category['tests']) || count($category['cultures']))
            @php 
                $count_categories++;
            @endphp

            <!-- Add page break before a new category (except for the first category) -->
            @if($count_categories > 1)
                <pagebreak></pagebreak>
            @endif

            <!-- Category title -->
            <h4 class="test_title beak-page" align="center">
                {{$category['name']}}
            </h4>

            <!-- Loop through tests in the category -->
            @if(count($category['tests']))
                @foreach($category['tests'] as $test)
                    <!-- Check if the test is a rapid test by name (contains "Rapid") -->
                    @if(isset($test['test']['name']) && str_contains(strtolower($test['test']['name']), 'rapid'))
                        <!-- Simplified table for rapid tests (only Test and Result columns) -->
                        <table class="table test">
                            <thead>
                                <!-- Test name header -->
                                <tr>
                                    <th class="test_title" align="center" colspan="2">
                                        <h5>{{$test['test']['name']}}</h5>
                                    </th>
                                </tr>
                                <tr class="transparent">
                                    <th colspan="2"></th>
                                </tr>
                                <!-- Table headers for rapid test -->
                                <tr class="test_head">
                                    <th width="50%" class="text-left">Test</th>
                                    <th width="50%">Result</th>
                                </tr>
                            </thead>
                            <tbody class="table-bordered">
                                <!-- Loop through test results -->
                                @foreach($test["results"] as $result)
                                    @if(isset($result['component']))
                                        <!-- Display component title if it exists and has no result template -->
                                        @if($result['component']['title'] && !$result['component']['result_temp'])
                                            <tr>
                                                <td colspan="2" class="component_title test_name text-center">
                                                    <b>{{$result['component']['name']}}</b>
                                                </td>
                                            </tr>
                                        @endif
                                        <!-- Display component with result template -->
                                        @if($result['component']['result_temp'])
                                            <tr>
                                                <td colspan="2">
                                                    <b>{{$result['component']['name']}}</b>
                                                    {!! $result['result_temp'] !!}
                                                </td>
                                            </tr>
                                        @endif
                                        <!-- Display test result row if no title and result exists -->
                                        @if(!$result['component']['title'] && $result['result'])
                                            <tr>
                                                <!-- Test Name -->
                                                <td class="text-capitalize test_name">{{ $result["component"]["name"] }}</td>
                                                <!-- Result with conditional bold formatting -->
                                                <td align="center" class="result">
                                                    @php
                                                        $boldStatuses = ['Critical high', 'High', 'Critical low', 'Low'];
                                                    @endphp
                                                    @if(in_array($result['status'], $boldStatuses))
                                                        <span class="bold-text">{{ $result["result"] }}</span>
                                                    @else
                                                        <span>{!! $result["result"] !!}</span>
                                                    @endif
                                                </td>
                                            </tr>
                                        @endif
                                    @endif
                                @endforeach
                                <!-- Display test comment if it exists -->
                                @if(isset($test['comment']))
                                    <tr class="comment">
                                        <td colspan="2">
                                            <table class="comment">
                                                <tbody>
                                                    <tr>
                                                        <th width="80px"><b>Note :</b></th>
                                                        <td>{!! str_replace("\n", '<br />', $test['comment']) !!}</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                @endif
                            </tbody>
                        </table>
                    @else
                        <!-- Full table for non-rapid tests -->
                        <table class="table test">
                            <thead>
                                <!-- Test name header -->
                                <tr>
                                    <th class="test_title" align="center" colspan="5">
                                        <h5>{{$test['test']['name']}}</h5>
                                    </th>
                                </tr>
                                <tr class="transparent">
                                    <th colspan="5"></th>
                                </tr>
                                <!-- Table headers for test results -->
                                <tr class="test_head">
                                    <th width="30%" class="text-left">Test</th>
                                    <th width="17.5%">Result</th>
                                    <th width="17.5%">Unit</th>
                                    <th width="35%">Normal Range</th>
                                    <!-- Status column is commented out -->
                                    <!-- <th width="17.5%">Status</th> -->
                                </tr>
                            </thead>
                            <tbody class="table-bordered">
                                <!-- Loop through test results -->
                                @foreach($test["results"] as $result)
                                    @if(isset($result['component']))
                                        <!-- Display component title if it exists and has no result template -->
                                        @if($result['component']['title'] && !$result['component']['result_temp'])
                                            <tr>
                                                <td colspan="5" class="component_title test_name text-center">
                                                    <b>{{$result['component']['name']}}</b>
                                                </td>
                                            </tr>
                                        @endif
                                        <!-- Display component with result template -->
                                        @if($result['component']['result_temp'])
                                            <tr>
                                                <td colspan="5">
                                                    <b>{{$result['component']['name']}}</b>
                                                    {!! $result['result_temp'] !!}
                                                </td>
                                            </tr>
                                        @endif
                                        <!-- Display test result row if no title and result exists -->
                                        @if(!$result['component']['title'] && $result['result'])
                                            <tr>
                                                <!-- Test Name -->
                                                <td class="text-capitalize test_name">{{ $result["component"]["name"] }}</td>
                                                <!-- Result with conditional bold formatting -->
                                                <td align="center" class="result">
                                                    @php
                                                        $boldStatuses = ['Critical high', 'High', 'Critical low', 'Low'];
                                                    @endphp
                                                    @if(in_array($result['status'], $boldStatuses))
                                                        <span class="bold-text">{{ $result["result"] }}</span>
                                                    @else
                                                        <span>{!! $result["result"] !!}</span>
                                                    @endif
                                                </td>
                                                <!-- Unit -->
                                                <td align="center" class="unit">{{ $result["component"]["unit"] }}</td>
                                                <!-- Reference Range -->
                                                <td align="left" class="reference_range">
                                                    {!! $result["component"]["reference_range"] !!}
                                                </td>
                                                <!-- Status column (commented out) -->
                                                <!--
                                                <td align="center" class="status">
                                                    @if(in_array($result['status'], $boldStatuses))
                                                        <span class="bold-text">{{ $result['status'] }}</span>
                                                    @else
                                                        {{ $result['status'] }}
                                                    @endif
                                                </td>
                                                -->
                                            </tr>
                                        @endif
                                    @endif
                                @endforeach
                                <!-- Display test comment if it exists -->
                                @if(isset($test['comment']))
                                    <tr class="comment">
                                        <td colspan="5">
                                            <table class="comment">
                                                <tbody>
                                                    <tr>
                                                        <th width="80px"><b>Note :</b></th>
                                                        <td>{!! str_replace("\n", '<br />', $test['comment']) !!}</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                @endif
                            </tbody>
                        </table>
                    @endif
                @endforeach
            @endif

            <!-- Loop through cultures in the category -->
            @if(count($category['cultures']))
                @foreach($category['cultures'] as $culture)
                    <!-- Culture title -->
                    <h5 class="test_title beak-page" align="center">
                        {{$culture['culture']['name']}}
                    </h5>

                    <!-- Culture options table -->
                    <table class="table" width="100%">
                        <tbody>
                            @foreach($culture['culture_options'] as $culture_option)
                                @if(isset($culture_option['value']) && isset($culture_option['culture_option']))
                                    <tr>
                                        <th class="no-border test_name" width="10px" nowrap="nowrap" align="left">
                                            <span class="option_title">{{$culture_option['culture_option']['value']}} :</span>
                                        </th>
                                        <td class="no-border result">
                                            {{$culture_option['value']}}
                                        </td>
                                    </tr>
                                @endif
                            @endforeach
                        </tbody>
                    </table>

                    <!-- Sensitivity table -->
                    <table class="table table-bordered sensitivity" width="100%">
                        <thead class="test_head">
                            <tr>
                                <th align="left">Name</th>
                                <th align="center">Sensitivity</th>
                                <th align="left">Commercial name</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- High sensitivity antibiotics -->
                            @foreach($culture['high_antibiotics'] as $antibiotic)
                                <tr>
                                    <td width="200px" nowrap="nowrap" align="left" class="antibiotic_name">
                                        {{$antibiotic['antibiotic']['name']}}
                                    </td>
                                    <td width="120px" nowrap="nowrap" align="center" class="sensitivity">
                                        {{$antibiotic['sensitivity']}}
                                    </td>
                                    <td class="commercial_name">
                                        {{$antibiotic['antibiotic']['commercial_name']}}
                                    </td>
                                </tr>
                            @endforeach
                            <!-- Moderate sensitivity antibiotics -->
                            @foreach($culture['moderate_antibiotics'] as $antibiotic)
                                <tr>
                                    <td width="200px" nowrap="nowrap" align="left">
                                        {{$antibiotic['antibiotic']['name']}}
                                    </td>
                                    <td width="120px" nowrap="nowrap" align="center">
                                        {{$antibiotic['sensitivity']}}
                                    </td>
                                    <td>
                                        {{$antibiotic['antibiotic']['commercial_name']}}
                                    </td>
                                </tr>
                            @endforeach
                            <!-- Resistant antibiotics -->
                            @foreach($culture['resident_antibiotics'] as $antibiotic)
                                <tr>
                                    <td width="200px" nowrap="nowrap" align="left">
                                        {{$antibiotic['antibiotic']['name']}}
                                    </td>
                                    <td width="120px" nowrap="nowrap" align="center">
                                        {{$antibiotic['sensitivity']}}
                                    </td>
                                    <td>
                                        {{$antibiotic['antibiotic']['commercial_name']}}
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    <!-- Display culture comment if it exists -->
                    @if(isset($culture['comment']))
                        <table width="100%" class="comment">
                            <tbody>
                                <tr>
                                    <td width="10px" nowrap="nowrap" class="no-border"><b>Comment</b> :</td>
                                    <td>{!! str_replace("\n", '<br />', $culture['comment']) !!}</td>
                                </tr>
                            </tbody>
                        </table>
                    @endif
                @endforeach
            @endif
        @endif
    @endforeach
</div>

@endsection
```