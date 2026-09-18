# Fixed-Point Numerics in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **fixed-point types**: ordinary
`delta`/`range` and decimal `delta`/`digits`, plus the `'Delta`
attribute. For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| Ordinary fixed | `Money` |
| Decimal fixed | `Decimal_Money` |
| `'Delta` | `Delta_Of_Money` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 4).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
