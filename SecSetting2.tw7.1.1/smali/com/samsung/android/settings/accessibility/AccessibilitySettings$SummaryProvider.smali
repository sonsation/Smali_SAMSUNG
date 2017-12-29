.class Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 827
    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 825
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 832
    if-eqz p1, :cond_0

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0b033f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 834
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 834
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0b029b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 835
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 835
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0284

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 831
    .end local v0    # "summary":Ljava/lang/String;
    :cond_0
    return-void
.end method
