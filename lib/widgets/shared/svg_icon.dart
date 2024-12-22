import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String svgName;
  final double strokeOpacity;
  final String? fillColor;
  final String? strokeColor;

  SvgIcon({
    required this.svgName,
    required this.strokeOpacity,
    this.fillColor = '#000',
    this.strokeColor = '#fff',
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, String> svgStrings = {
      'home': '''
      <svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" fill="none" viewBox="0 0 25 24">
        <g clip-path="url(#a)">
          <path stroke="#000" stroke-opacity="$strokeOpacity" stroke-linecap="round" stroke-linejoin="round" d="M15.124 19.5V15a.75.75 0 0 0-.75-.75h-3a.75.75 0 0 0-.75.75v4.5a.75.75 0 0 1-.75.75H5.376a.75.75 0 0 1-.75-.75v-8.668a.75.75 0 0 1 .245-.555l7.5-6.819a.75.75 0 0 1 1.009 0l7.5 6.819a.751.751 0 0 1 .246.555V19.5a.75.75 0 0 1-.75.75h-4.5a.75.75 0 0 1-.75-.75v0Z"/>
        </g>
        <defs>
          <clipPath id="a">
            <path fill="#fff" d="M.875 0h24v24h-24z"/>
          </clipPath>
        </defs>
      </svg>
    ''',
      'magGlass': '''
      <svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" fill="none" viewBox="0 0 25 24">
        <g clip-path="url(#a)">
          <path stroke="#70757F" stroke-opacity="$strokeOpacity" stroke-linecap="round" stroke-linejoin="round" d="M11.5 18.75A7.875 7.875 0 1 0 11.5 3a7.875 7.875 0 0 0 0 15.75Zm5.568-2.306L21.624 21"/>
        </g>
        <defs>
          <clipPath id="a">
            <path fill="#fff" d="M.625 0h24v24h-24z"/>
          </clipPath>
        </defs>
      </svg>
    ''',
      'cart': '''
     <svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" fill="none" viewBox="0 0 25 24">
      <g clip-path="url(#a)">
        <path stroke="#70757F" stroke-opacity="$strokeOpacity" d="M8.125 20.25a1 1 0 1 1-2 0 1 1 0 0 1 2 0Zm11.25 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0Z"/>
        <path stroke="#70757F" stroke-opacity="$strokeOpacity" stroke-linecap="round" stroke-linejoin="round" d="M4.125 6h16.351a.75.75 0 0 1 .738.884l-1.635 9a.75.75 0 0 1-.738.616H6.667a.75.75 0 0 1-.737-.616L3.555 2.865a.75.75 0 0 0-.737-.615H1.125"/>
      </g>
      <defs>
        <clipPath id="a">
          <path fill="#fff" d="M.375 0h24v24h-24z"/>
        </clipPath>
      </defs>
    </svg>
    ''',
      'profile': '''
    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" fill="none" viewBox="0 0 25 24">
      <g clip-path="url(#a)">
        <path stroke="#70757F" stroke-opacity="$strokeOpacity" stroke-miterlimit="10" d="M12.125 15a6 6 0 1 0 0-12 6 6 0 0 0 0 12Z"/>
        <path stroke="#70757F" stroke-opacity="$strokeOpacity" stroke-linecap="round" stroke-linejoin="round" d="M3.03 20.25a10.504 10.504 0 0 1 18.19 0"/>
      </g>
      <defs>
        <clipPath id="a">
          <path fill="#fff" d="M.125 0h24v24h-24z"/>
        </clipPath>
      </defs>
    </svg>
    ''',
    'sale': '''<svg xmlns="http://www.w3.org/2000/svg" width="26" height="25" fill="none" viewBox="0 0 26 25">
    <path fill="$fillColor" d="M11.356 1.782a1.613 1.613 0 0 1 2.605 0l1.817 2.487c.318.435.832.683 1.37.66l3.078-.13a1.613 1.613 0 0 1 1.624 2.037l-.812 2.971a1.613 1.613 0 0 0 .339 1.483l2.02 2.325a1.613 1.613 0 0 1-.58 2.54l-2.829 1.218c-.494.213-.85.66-.948 1.189l-.558 3.03a1.613 1.613 0 0 1-2.347 1.13l-2.716-1.453a1.612 1.612 0 0 0-1.521 0L9.18 22.721a1.613 1.613 0 0 1-2.346-1.13l-.558-3.029a1.613 1.613 0 0 0-.949-1.19L2.5 16.156a1.613 1.613 0 0 1-.58-2.54l2.02-2.325c.354-.407.481-.963.34-1.483l-.812-2.971A1.613 1.613 0 0 1 5.09 4.799l3.077.13a1.613 1.613 0 0 0 1.37-.66l1.818-2.487Z"/>
    <g clip-path="url(#a)">
    <path stroke="$strokeColor" stroke-linecap="round" stroke-linejoin="round" stroke-width=".706" d="m16.237 8.92-6.351 6.352m.882-4.234a1.235 1.235 0 1 0 0-2.47 1.235 1.235 0 0 0 0 2.47Zm4.587 4.586a1.235 1.235 0 1 0 0-2.469 1.235 1.235 0 0 0 0 2.47Z"/>
    </g>
    <defs>
    <clipPath id="a">
    <path fill="$fillColor" d="M7.416 6.451h11.29v11.29H7.416z"/>
    </clipPath>
    </defs>
    </svg>
    '''

    };

    return SvgPicture.string(
      svgStrings[svgName]!,
      width: 24,  // Adjust the size as needed
      height: 24, // Adjust the size as needed
    );
  }
}
