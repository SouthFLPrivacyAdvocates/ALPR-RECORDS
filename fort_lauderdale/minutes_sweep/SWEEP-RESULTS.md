# Full-Text Sweep — Fort Lauderdale Meeting Agendas & Minutes, Oct 2021 – Jul 2026

**Date of sweep:** 2026-07-02
**Question:** Does the Flock Safety ALPR program (study agreement 3/18/2022; Insight PO 0068716017, 10/23/2024, $450,000.40; Insight PO 0069123419, 8/29/2025, $61,710) appear anywhere in the text of the City Commission's published meeting documents — not just in agenda-item titles?

## Method

1. Enumerated **all 362 events** from the Legistar API (`webapi.legistar.com/v1/fortlauderdale/events`), October 1, 2021 through present — every body: Regular Meetings, Conference Meetings, Workshops, Special Meetings, CRA Board, OPEB Board.
2. Downloaded all **556 published documents** (agenda PDFs + minutes/action-summary PDFs; inventory in `urls.tsv`).
3. **520 PDFs** downloaded and text-extracted successfully (pdftotext; zero required OCR).
4. **33 documents returned 404** at their published Granicus URLs (23 agendas, 10 minutes; concentrated Oct 2021–Aug 2022, plus one 2023 — apparent platform file rot; not in the Wayback Machine; InSite View.ashx also fails). Coverage for these was reconstructed from the Legistar **EventItems API** (all agenda-item titles + action names + action text for each of the 29 affected events; event IDs in `missing_eids.txt`). Every one of the 362 events is therefore represented by full document text or complete item-level reconstruction.
5. Case-insensitive full-text search across all 549 text files for: `flock`, `falcon`, `insight`, `license plate`, `plate reader`, `ALPR`, `OMNIA`, `cobb county`, `vehicle fingerprint`.

## Results

| Keyword | Hits | Disposition |
|---|---|---|
| flock | 44 (25 files) | **All are "FlockFest,"** an annual beach event (event agreements, proclamations, BBID grants), 2022–2026. Zero relate to Flock Safety. |
| falcon | 5 | A neighbor named Anthony Falcone (2022) and the "14U Fort Lauderdale Falcons" youth football team (2024). |
| license plate / plate reader | 4 files | The Oct 5, 2021 Lauderdale Harbors HOA revocable-license item (previously documented), and the titles of the "License Plate Reader Replacement Plan" attachments in the June 2022 and June 2023 budget-workshop agendas (the standing $400K/yr capital line, previously documented). |
| insight | 0 | — |
| ALPR | 0 | — |
| OMNIA / cobb county / vehicle fingerprint | 0 | — |

## Conclusion

Across every published agenda and minutes document of every City Commission body from October 2021 through July 2026 — 556 documents covering 362 meetings, with 100% event-level coverage — **the Flock Safety ALPR program is never mentioned. Not as an agenda item, not in any action text, not in passing.** The only police-ALPR references in the entire corpus are the 2021 HOA camera license and the budget plan's LPR replacement line-item titles.

Combined with the earlier Matters-table title search and the October 2024 blind enumeration, the finding is now exhausted at every level of the city's legislative record that is remotely accessible: **the $511,710 Flock program has no public legislative footprint whatsoever.**

## What the action summaries prove

The action summaries record **every item individually — including consent-agenda items — with file number, full title, action taken, and roll-call vote by name** (e.g., 21-0943, the Lauderdale Harbors LPR camera license: full title, "APPROVED," "Aye: 5 –" with each commissioner named). A vote cannot exist without its item appearing in an action summary. Zero Flock Safety items across every action summary in the window therefore establishes affirmatively that **no Commission vote authorizing the Flock program ever occurred** — not on the regular agenda, not on consent. This is a proven negative, not an inference from absence.

## Caveats

1. Fort Lauderdale's published minutes are **action summaries**, not verbatim transcripts. A purely verbal exchange at a meeting (e.g., a comment during City Manager reports) that produced no agenda item and no recorded action would not appear in these documents. The only more complete record is the meeting video archive. **Scope of this caveat:** it bears only on whether commissioners were ever verbally *told* about the program — it cannot affect the no-authorization finding, because authorization requires a recorded action.
2. Budget-workshop **attachments** (e.g., the LPR Replacement Plan PDFs themselves) are separate files not included in this corpus; those specific attachments are already held and analyzed in `../budgets/`.
3. The 33 dead-URL documents were covered via API reconstruction of item titles and action text, which is the same content the agenda/minutes PDFs contain, but formatting-level content (e.g., attachment lists) may be incomplete for those 29 events.

## Files

- `urls.tsv` — full inventory: date, body, doc type, published URL for all 556 documents
- `missing_eids.txt` — the 29 event IDs whose PDFs are dead links, covered via EventItems API
- Raw PDFs and extracted text retained in the working sandbox (not committed due to size); re-downloadable from `urls.tsv`
