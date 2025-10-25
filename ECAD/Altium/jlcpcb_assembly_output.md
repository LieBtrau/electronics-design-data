# Assembly output for JLCPCB
1. Open BoMDoc document
2. Open BoMDoc properties -> Columns tab
3. Add alias to Names:
  * Comment : Name (already there by default)
  * Item ID : Comment
  * ItemGUID : Footprint
4. Open BoM_JLCPCB and select the columns as shown below

|Comment | Designator | Footprint | JLCPCB Part #|
|--------|------------|-----------|--------------|
|CMP-072-000777 | C2, C3 | 03891085-60A7-4CE7-8F45-CA33D90D47FC | C70462 |

5. There should be a filter on "JLCPCB Part #" is not blank