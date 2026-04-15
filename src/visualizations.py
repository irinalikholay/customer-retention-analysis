import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

df = pd.read_csv("data/processed/cohort_table.csv", sep=";", index_col=0)

plt.figure(figsize=(12, 8))

sns.heatmap(
    df,
    annot=True,
    fmt=".2f",
    cmap="Blues",
    linewidths=0.5
)

plt.title("Customer Retention Heatmap")
plt.ylabel("Cohort Month")
plt.xlabel("Months Since First Purchase")

plt.savefig("data/processed/retention_heatmap.png")

plt.show()