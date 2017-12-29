.class Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintSummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPrintManager:Landroid/print/PrintManager;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mContext:Landroid/content/Context;

    .line 639
    iput-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 640
    const-string/jumbo v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 640
    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mPrintManager:Landroid/print/PrintManager;

    .line 637
    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 9
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 658
    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v4}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object v3

    .line 660
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJob;>;"
    const/4 v1, 0x0

    .line 661
    .local v1, "numActivePrintJobs":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 662
    .local v2, "numPrintJobs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 663
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJob;

    invoke-virtual {v4}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/print/PrintSettingsFragment;->-wrap1(Landroid/print/PrintJobInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 664
    add-int/lit8 v1, v1, 0x1

    .line 662
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_1
    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 669
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f130014

    .line 668
    invoke-virtual {v5, v7, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 657
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "isListening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 646
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mPrintManager:Landroid/print/PrintManager;

    if-eqz v0, :cond_0

    .line 647
    if-eqz p1, :cond_1

    .line 648
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 649
    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintSummaryProvider;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    goto :goto_0
.end method
