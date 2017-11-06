.class Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackFilterableImpl;
.super Ljava/lang/Object;
.source "PurchasedTrackFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchasedTrackFilterableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackFilterableImpl;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackFilterableImpl;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;)V

    return-void
.end method


# virtual methods
.method public getFilterOptionFromSettings(Landroid/content/SharedPreferences;)I
    .locals 3
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 426
    const/4 v0, 0x7

    .line 427
    .local v0, "default_option":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackFilterableImpl;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DrmDownloadUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 428
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    const/16 v0, 0x8

    .line 431
    :cond_0
    const-string v1, "filter_option_purchased_track"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getFilterOptions()[I
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7
        0x8
    .end array-data
.end method

.method public saveFilterOptionToSettings(Landroid/content/SharedPreferences;I)V
    .locals 4
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "filterBy"    # I

    .prologue
    .line 436
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "981"

    const-string v3, "9802"

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    const-string v0, "Collect"

    .line 437
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter_option_purchased_track"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 441
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 442
    return-void

    .line 436
    :cond_0
    const-string v0, "Temporary"

    goto :goto_0
.end method
