.class Lcom/samsung/android/app/music/list/local/FolderFragment$FolderFilterableImpl;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderFilterableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/FolderFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/FolderFragment;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/FolderFragment$FolderFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/FolderFragment;Lcom/samsung/android/app/music/list/local/FolderFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/FolderFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/FolderFragment$1;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/FolderFragment$FolderFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/FolderFragment;)V

    return-void
.end method


# virtual methods
.method public getFilterOptionFromSettings(Landroid/content/SharedPreferences;)I
    .locals 3
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 329
    const-string v0, "filter_option_folder"

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderFragment$FolderFilterableImpl;->getFilterOptions()[I

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
    .line 324
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
    .line 335
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "filter_option_folder"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 337
    if-nez p2, :cond_0

    const-string v0, "Date added"

    .line 340
    .local v0, "eventDetail":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "217"

    const-string v3, "1621"

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void

    .line 337
    .end local v0    # "eventDetail":Ljava/lang/String;
    :cond_0
    const-string v0, "Name"

    goto :goto_0
.end method
