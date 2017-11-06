.class Lcom/samsung/android/app/music/list/local/GenreDetailFragment$GenreDetailFilterableImpl;
.super Ljava/lang/Object;
.source "GenreDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/GenreDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenreDetailFilterableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/GenreDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/GenreDetailFragment;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$GenreDetailFilterableImpl;->this$0:Lcom/samsung/android/app/music/list/local/GenreDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/GenreDetailFragment;Lcom/samsung/android/app/music/list/local/GenreDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/GenreDetailFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/GenreDetailFragment$1;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$GenreDetailFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/GenreDetailFragment;)V

    return-void
.end method


# virtual methods
.method public getFilterOptionFromSettings(Landroid/content/SharedPreferences;)I
    .locals 3
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 200
    const-string v0, "filter_option_genre_track"

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$GenreDetailFilterableImpl;->getFilterOptions()[I

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
    .line 195
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
    .locals 2
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "filterBy"    # I

    .prologue
    .line 206
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filter_option_genre_track"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    return-void
.end method
