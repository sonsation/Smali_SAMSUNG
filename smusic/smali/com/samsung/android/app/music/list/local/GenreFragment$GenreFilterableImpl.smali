.class Lcom/samsung/android/app/music/list/local/GenreFragment$GenreFilterableImpl;
.super Ljava/lang/Object;
.source "GenreFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/GenreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenreFilterableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/GenreFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/GenreFragment;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/GenreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/GenreFragment;Lcom/samsung/android/app/music/list/local/GenreFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/GenreFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/GenreFragment$1;

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/GenreFragment;)V

    return-void
.end method


# virtual methods
.method public getFilterOptionFromSettings(Landroid/content/SharedPreferences;)I
    .locals 3
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 370
    const-string v0, "filter_option_genre"

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreFilterableImpl;->getFilterOptions()[I

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
    .line 365
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public saveFilterOptionToSettings(Landroid/content/SharedPreferences;I)V
    .locals 4
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "filterBy"    # I

    .prologue
    .line 376
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "filter_option_genre"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    const-string v0, "Most added"

    .line 381
    .local v0, "eventDetail":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "213"

    const-string v3, "1611"

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 378
    .end local v0    # "eventDetail":Ljava/lang/String;
    :cond_0
    const-string v0, "Name"

    goto :goto_0
.end method
