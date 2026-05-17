# CapLogiX — Strategic Portfolio Manager

A local-first LRP (Long Range Planning) portfolio tool for capital project sequencing, financial modelling, and strategic prioritisation.

Built for project managers, financial professionals, and executives who need to answer: **"Which projects do we fund, in which year, and in what order?"**

---

## Features

| Feature | Detail |
|---|---|
| **3 sequencing modes** | FFCF Auto, EBIT Max Auto, Manual year assignment |
| **Monte Carlo–optimised weights** | ROCE, NPV, IRR, CapEx penalty — derived from simulation manuscript |
| **10-yr DCF model** | NPV, IRR, ROCE, Payback per project; configurable WACC, tax rate, inflation |
| **Per-year budget caps** | Different cap each planning year |
| **Project lifecycle** | Concept → Approved → Active → On Hold → Completed → Cancelled |
| **Gantt timeline** | Phase/stage view, colour by status or category |
| **Analytics tab** | WACC sensitivity, NPV waterfall, risk–return bubble chart |
| **Scenarios** | Save & load named portfolio snapshots (Base Case, Aggressive Growth, etc.) |
| **Excel export** | 4-sheet workbook: Executive Summary, Portfolio, FCF Schedules, Sensitivity |

---

## Quick Start (local)

**Requirements:** Python 3.10+

```bash
git clone https://github.com/YOUR_USERNAME/caplogix.git
cd caplogix
pip install -r requirements.txt
python app.py
```

Browser opens automatically at `http://127.0.0.1:5000`.

On Windows, double-click **`run.bat`** instead.

---

## Financial Model

- **Revenue:** `capacity × unit_price × ramp_factor × (1 + inflation)^year`
- **Cost:** `capacity × unit_cost × ramp_factor × (1 + cost_inflation)^year`
- **Depreciation:** straight-line over configurable asset life (CapEx only; OpEx expensed immediately)
- **Working capital:** % of Year-1 revenue, reserved at start-up, released in final year
- **Terminal value:** EV/EBITDA multiple applied to final-year EBIT (optional)
- **NPV:** discounted at WACC; **IRR:** Newton–Raphson solver

---

## Deployment (Render)

1. Push this repo to GitHub
2. Create a new **Web Service** on [render.com](https://render.com)
3. Connect your GitHub repo
4. Set **Build Command:** `pip install -r requirements.txt`
5. Set **Start Command:** `gunicorn app:app --bind 0.0.0.0:$PORT`

> **Note:** Render's free tier uses an ephemeral filesystem — portfolio data resets on restart.  
> This is by design for demo/showcase use.

---

## Contact

Built by [Your Name] · [gongyauc@gmail.com](mailto:gongyauc@gmail.com)  
Available for portfolio modelling, LRP design, and capital allocation consulting.
"# caplogix" 
"# caplogix" 
