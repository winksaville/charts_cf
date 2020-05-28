// Copyright 2020 the Charts project authors. Please see the AUTHORS file
// for details.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:charts_common_cf/src/chart/cartesian/axis/spec/ordinal_axis_spec.dart';

import 'package:test/test.dart';


void main() {

  FixedPixelSpaceOrdinalScaleSpec fixedPixelSpaceOrdinalScaleSpec1;
  FixedPixelSpaceOrdinalScaleSpec fixedPixelSpaceOrdinalScaleSpec2;
  FixedPixelSpaceOrdinalScaleSpec fixedPixelSpaceOrdinalScaleSpec3;

  FixedPixelOrdinalScaleSpec fixedPixelOrdinalScaleSpec1;
  FixedPixelOrdinalScaleSpec fixedPixelOrdinalScaleSpec2;
  FixedPixelOrdinalScaleSpec fixedPixelOrdinalScaleSpec3;


  setUp(() {
    fixedPixelSpaceOrdinalScaleSpec1 = FixedPixelSpaceOrdinalScaleSpec(20);
    fixedPixelSpaceOrdinalScaleSpec2 = FixedPixelSpaceOrdinalScaleSpec(20);
    fixedPixelSpaceOrdinalScaleSpec3 = FixedPixelSpaceOrdinalScaleSpec(25);
    fixedPixelOrdinalScaleSpec1 = FixedPixelOrdinalScaleSpec(20);
    fixedPixelOrdinalScaleSpec2 = FixedPixelOrdinalScaleSpec(20);
    fixedPixelOrdinalScaleSpec3 = FixedPixelOrdinalScaleSpec(25);
  });

  group('== operator', () {
    test('SimpleOrdinalScaleSpec', () {
      SimpleOrdinalScaleSpec simpleOrdinalScaleSpec1 = SimpleOrdinalScaleSpec();
      SimpleOrdinalScaleSpec simpleOrdinalScaleSpec2 = SimpleOrdinalScaleSpec();

      expect(simpleOrdinalScaleSpec1 == simpleOrdinalScaleSpec2, equals(true)); 

      // Verify order doesn't matter
      expect(simpleOrdinalScaleSpec1 != fixedPixelSpaceOrdinalScaleSpec1, equals(true));
      expect(fixedPixelSpaceOrdinalScaleSpec1 != simpleOrdinalScaleSpec1, equals(true));
    });

    test('FixedPixelSpaceOrdinalScaleSpec', () {
      expect(fixedPixelSpaceOrdinalScaleSpec1 == fixedPixelSpaceOrdinalScaleSpec2, equals(true)); 
      expect(fixedPixelSpaceOrdinalScaleSpec1 != fixedPixelSpaceOrdinalScaleSpec3, equals(true)); 

      // Verify order doesn't matter
      expect(fixedPixelSpaceOrdinalScaleSpec1 != fixedPixelOrdinalScaleSpec1, equals(true));
      expect(fixedPixelOrdinalScaleSpec1 != fixedPixelSpaceOrdinalScaleSpec1, equals(true));
    });

    test('FixedPixelOrdinalScaleSpec', () {
      expect(fixedPixelOrdinalScaleSpec1 == fixedPixelOrdinalScaleSpec2, equals(true)); 
      expect(fixedPixelOrdinalScaleSpec1 != fixedPixelOrdinalScaleSpec3, equals(true)); 

      // Verify order doesn't matter
      expect(fixedPixelOrdinalScaleSpec1 != fixedPixelSpaceOrdinalScaleSpec1, equals(true));
      expect(fixedPixelSpaceOrdinalScaleSpec1 != fixedPixelOrdinalScaleSpec1, equals(true));
    });
  });

}
