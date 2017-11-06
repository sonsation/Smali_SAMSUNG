.class Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackFilterableImpl;
.super Ljava/lang/Object;
.source "AllTrackFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AllTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllTrackFilterableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AllTrackFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/AllTrackFragment;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/AllTrackFragment;Lcom/samsung/android/app/music/list/local/AllTrackFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/AllTrackFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/AllTrackFragment$1;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/AllTrackFragment;)V

    return-void
.end method


# virtual methods
.method public getFilterOptionFromSettings(Landroid/content/SharedPreferences;)I
    .locals 3
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 377
    const-string v0, "filter_option_all_track"

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackFilterableImpl;->getFilterOptions()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFilterOptions()[I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x0
    .end array-data
.end method

.method public saveFilterOptionToSettings(Landroid/content/SharedPreferences;I)V
    .locals 4
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "filterBy"    # I

    .prologue
    .line 383
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "filter_option_all_track"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 384
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 386
    if-nez p2, :cond_0

    const-string v0, "Date added"

    .line 389
    .local v0, "eventDetail":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "201"

    const-string v3, " 1561"

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void

    .line 386
    .end local v0    # "eventDetail":Ljava/lang/String;
    :cond_0
    const-string v0, "Name"

    goto :goto_0
.end method
