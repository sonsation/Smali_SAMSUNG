.class public Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "RadioResetCustomizeDialDialog.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;,
        Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;,
        Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$OnGenreVisibilityListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;"
    }
.end annotation


# static fields
.field private static final DIAL_INFORMATION:Ljava/lang/String; = "dial_information"

.field public static final LOG_TAG:Ljava/lang/String; = "RadioResetCustomizeDialDialog"


# instance fields
.field private isNeedUpdate:Z

.field private mButtonText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCustomiseButton:Landroid/widget/FrameLayout;

.field private mGenreMAX:I

.field private mGenresList:Landroid/widget/ListView;

.field private mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

.field private mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mNumGenresSelected:I

.field private mValues:[Z

.field private mWholeGenres:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    .line 54
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenreMAX:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->isNeedUpdate:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mValues:[Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->commitChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mNumGenresSelected:I

    return v0
.end method

.method static synthetic access$208(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mNumGenresSelected:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mNumGenresSelected:I

    return v0
.end method

.method static synthetic access$210(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mNumGenresSelected:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mNumGenresSelected:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mWholeGenres:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenreMAX:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mCustomiseButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method private commitChanges()V
    .locals 9

    .prologue
    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v1, "genreIdArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->getCount()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 380
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    invoke-virtual {v6, v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->getItem(I)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    move-result-object v0

    .line 382
    .local v0, "currGenre":Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;
    iget-boolean v6, v0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mOrigIsVisible:Z

    iget-boolean v7, v0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mIsVisible:Z

    if-eq v6, v7, :cond_0

    .line 383
    iget-object v6, v0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mGenreId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const-string v6, "RadioResetCustomizeDialDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "commitChanges : syncSetting : currGenre.mGenreId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mGenreId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "currGenre":Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 390
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 391
    .local v4, "settingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v5, "settingMapList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x1

    .line 395
    invoke-virtual {v6, p0, v7, v1, v8}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->saveSettings(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/HashMap;Ljava/util/ArrayList;Z)I

    .line 397
    .end local v4    # "settingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "settingMapList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_2
    return-void
.end method

.method private createAllGenresLoader()Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 297
    const-string v0, "RadioResetCustomizeDialDialog"

    const-string v1, "createAllGenresLoader : createAllGenresLoader()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mNumGenresSelected:I

    .line 300
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Genre;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v4, "genre_type NOT NULL AND genre_type != 2 AND genre_is_prefethced = 1 AND genre_is_hidden=0"

    const-string v6, "genre_ordinal"

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createGenresLoader()Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 315
    const-string v0, "RadioResetCustomizeDialDialog"

    const-string v1, "createGenresLoader : createGenresLoader()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mNumGenresSelected:I

    .line 318
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Genre;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v4, "genre_type NOT NULL AND genre_type != 2 AND genre_is_visible = 1 AND genre_is_prefethced = 1 AND genre_is_hidden=0"

    const-string v6, "genre_ordinal"

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private dataAsGenresList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 6
    .param p1, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    const-string v3, "RadioResetCustomizeDialDialog"

    const-string v4, "dataAsGenresList : dataAsGenresList()"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mNumGenresSelected:I

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 341
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 343
    :cond_0
    const-string v3, "genre_is_visible"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 344
    .local v1, "is_visible":I
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "genre_id"

    .line 345
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "genre_name"

    .line 346
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 348
    .local v0, "currGenre":Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 349
    iget v3, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mNumGenresSelected:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mNumGenresSelected:I

    .line 351
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    .end local v0    # "currGenre":Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;
    .end local v1    # "is_visible":I
    :cond_2
    return-object v2
.end method

.method private initLayout(Landroid/app/Dialog;)V
    .locals 7
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v6, 0x0

    .line 148
    const v1, 0x7f120348

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, "descTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a034c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 149
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v1, 0x7f120349

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mCustomiseButton:Landroid/widget/FrameLayout;

    .line 153
    const v1, 0x7f12034a

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mButtonText:Landroid/widget/TextView;

    .line 154
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mWholeGenres:Z

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mCustomiseButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mCustomiseButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v1, 0x7f12034b

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresList:Landroid/widget/ListView;

    .line 171
    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040115

    const v4, 0x7f120324

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    .line 174
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresList:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$2;-><init>(Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    return-void
.end method

.method public static newInstance(Z)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;
    .locals 3
    .param p0, "whole"    # Z

    .prologue
    .line 85
    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;-><init>()V

    .line 86
    .local v1, "f":Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "whole"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v1
.end method

.method private updateGenreInfo(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 275
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mValues:[Z

    aget-boolean v2, v2, v0

    iput-boolean v2, v1, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mIsVisible:Z

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getDialogTypeWholeGenre()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mWholeGenres:Z

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f040114

    return v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 406
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 418
    const/16 v0, 0x25a

    if-ne p2, v0, :cond_0

    .line 419
    if-nez p3, :cond_1

    .line 420
    const-string v0, "RadioResetCustomizeDialDialog"

    const-string v1, "onApiHandled : Genre Update is success"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const-string v0, "RadioResetCustomizeDialDialog"

    const-string v1, "onApiHandled : Genre Update is Failed.."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onAttach(Landroid/app/Activity;)V

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mContext:Landroid/content/Context;

    .line 97
    iput-object p0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mLoaderManager:Landroid/app/LoaderManager;

    .line 99
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onAttach(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mContext:Landroid/content/Context;

    .line 105
    iput-object p0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mLoaderManager:Landroid/app/LoaderManager;

    .line 107
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mWholeGenres:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->commitChanges()V

    .line 232
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onCancel(Landroid/content/DialogInterface;)V

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 430
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 431
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f120028

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 116
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f035d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 117
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string v1, "dial_information"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mValues:[Z

    .line 124
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->isNeedUpdate:Z

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mLoaderManager:Landroid/app/LoaderManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v6, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 139
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->initLayout(Landroid/app/Dialog;)V

    .line 140
    return-object v0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "whole"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mWholeGenres:Z

    .line 131
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mWholeGenres:Z

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mLoaderManager:Landroid/app/LoaderManager;

    const v2, 0x7f120025

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 133
    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mLoaderManager:Landroid/app/LoaderManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v6, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const-string v0, "RadioResetCustomizeDialDialog"

    const-string/jumbo v1, "onCreateLoader : onCreateLoader()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const v0, 0x7f120025

    if-ne p1, v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->createAllGenresLoader()Landroid/content/Loader;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 244
    :cond_0
    const v0, 0x7f120028

    if-ne p1, v0, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->createGenresLoader()Landroid/content/Loader;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loader id not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v2, "RadioResetCustomizeDialDialog"

    const-string/jumbo v3, "onLoadFinished : onLoadFinished()"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 254
    .local v1, "id":I
    const v2, 0x7f120025

    if-ne v1, v2, :cond_1

    .line 255
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->dataAsGenresList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 256
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->clear()V

    .line 257
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->isNeedUpdate:Z

    if-eqz v2, :cond_0

    .line 258
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->updateGenreInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->addAll(Ljava/util/Collection;)V

    .line 271
    :goto_0
    return-void

    .line 261
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;>;"
    :cond_1
    const v2, 0x7f120028

    if-ne v1, v2, :cond_3

    .line 262
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->dataAsGenresList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 263
    .restart local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->clear()V

    .line 264
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->isNeedUpdate:Z

    if-eqz v2, :cond_2

    .line 265
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->updateGenreInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 267
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 269
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;>;"
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loader id not recognized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v1, "RadioResetCustomizeDialDialog"

    const-string/jumbo v2, "onLoaderReset : onLoaderReset()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 285
    .local v0, "id":I
    const v1, 0x7f120028

    if-eq v0, v1, :cond_0

    const v1, 0x7f120025

    if-ne v0, v1, :cond_1

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->clear()V

    .line 290
    return-void

    .line 288
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loader id not recognized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 362
    const-string v3, "RadioResetCustomizeDialDialog"

    const-string v4, "[onSaveInstanceState]"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->getCount()I

    move-result v0

    .line 365
    .local v0, "count":I
    new-array v2, v0, [Z

    .line 366
    .local v2, "values":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 367
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog;->mGenresListAdapter:Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenresListAdapter;->getItem(I)Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/samsung/android/app/music/milk/dialog/RadioResetCustomizeDialDialog$GenreInfo;->mIsVisible:Z

    aput-boolean v3, v2, v1

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_0
    const-string v3, "dial_information"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 371
    return-void
.end method
