.class Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "SoftwareUpdateSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SoftwareUpdateSettings;
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
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-object p1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 574
    iput-object p2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 572
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 580
    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isUsingVZWFota(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isUsingATTFota(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    .line 581
    if-eqz p1, :cond_1

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0b04e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0b04df

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "summary":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-wrap0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0b049f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0b04a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 579
    .end local v0    # "summary":Ljava/lang/String;
    :cond_1
    return-void

    .line 580
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
