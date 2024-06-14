# Assembly output for JLCPCB
1. Open BoMDoc document
2. Open BoMDoc properties
3. Add alias to Names:
  * Item ID : Comment
  * ItemGUID : Footprint
  * Comment : Name (already there by default)
4. Open BoM_JLCPCB to check if everything is correct:

|Comment | Designator | Footprint | JLCPCB Part #|
|--------|------------|-----------|--------------|
|CMP-072-000777 | C2, C3 | 03891085-60A7-4CE7-8F45-CA33D90D47FC | C70462 |

5. There should be a filter on "JLCPCB Part #" is not blank