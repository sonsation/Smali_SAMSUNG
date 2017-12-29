.class Lcom/android/settings/applications/ManageApplications$SummaryProvider;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/ManageApplications$SummaryProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageApplications$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 1947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1948
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1949
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 1947
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/applications/ManageApplications$SummaryProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ManageApplications$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1955
    if-eqz p1, :cond_1

    .line 1956
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1957
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0455

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1959
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1958
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1960
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    const v3, 0x7f0b1d54

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1958
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1957
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1953
    :cond_1
    :goto_0
    return-void

    .line 1962
    :cond_2
    new-instance v0, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;-><init>(Lcom/android/settings/applications/ManageApplications$SummaryProvider;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$SummaryProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method