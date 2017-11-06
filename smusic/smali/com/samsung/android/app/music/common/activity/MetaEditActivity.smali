.class public Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "MetaEditActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;,
        Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;
    }
.end annotation


# static fields
.field private static final ENCODING_TABLE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ENCODING_TYPE:Ljava/lang/String; = "key_encoding_type"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-MetaEditor"

.field private static final TAG:Ljava/lang/String; = "MetaEditor"

.field private static final sPossibleToEdit:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionMenuController:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

.field private mChangedAnotherTrack:Z

.field private final mCoreMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

.field private final mEditTextViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mEncoding:Ljava/lang/String;

.field private mEncodingSpinner:Landroid/widget/Spinner;

.field private mGuideText:Landroid/widget/TextView;

.field private mIsPlaying:Z

.field private mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

.field private final mOnCompletedEditingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

.field private final mOnCompletedParsingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPausedByEditor:Z

.field private mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->ENCODING_TABLE:Ljava/util/List;

    .line 67
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->sPossibleToEdit:Landroid/util/LruCache;

    .line 72
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->ENCODING_TABLE:Ljava/util/List;

    const-string v1, "None"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->ENCODING_TABLE:Ljava/util/List;

    const-string v1, "UTF-8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->ENCODING_TABLE:Ljava/util/List;

    const-string v1, "UTF-16"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->ENCODING_TABLE:Ljava/util/List;

    const-string v1, "EUC-KR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->ENCODING_TABLE:Ljava/util/List;

    const-string v1, "Shift_JIS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->ENCODING_TABLE:Ljava/util/List;

    const-string v1, "GBK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->ENCODING_TABLE:Ljava/util/List;

    const-string v1, "Big5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mOnCompletedParsingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

    .line 129
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;-><init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mOnCompletedEditingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    .line 149
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$3;-><init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mCoreMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 178
    new-instance v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$4;-><init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->sPossibleToEdit:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->finishActivityWithToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mPausedByEditor:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->fillMetaInfoFromMediaProvider(Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->fillMetaInfoFromReader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getSADetailString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncoding:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->saveMetaInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncodingSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mActionMenuController:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->ENCODING_TABLE:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mGuideText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mChangedAnotherTrack:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mChangedAnotherTrack:Z

    return p1
.end method

.method private fillEditText(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "editText"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 454
    if-eqz p1, :cond_0

    .line 455
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->setText(Ljava/lang/String;)V

    .line 457
    :cond_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fillMetaInfoFromMediaProvider(Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V
    .locals 9
    .param p1, "meta"    # Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    .prologue
    .line 473
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artist:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v2, ""

    .line 474
    .local v2, "artist":Ljava/lang/String;
    :goto_0
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v5, ""

    .line 475
    .local v5, "title":Ljava/lang/String;
    :goto_1
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->album:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v0, ""

    .line 476
    .local v0, "album":Ljava/lang/String;
    :goto_2
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->genre:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v4, ""

    .line 477
    .local v4, "genre":Ljava/lang/String;
    :goto_3
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->year:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v7, ""

    .line 478
    .local v7, "year":Ljava/lang/String;
    :goto_4
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->track:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v6, ""

    .line 479
    .local v6, "trackNumber":Ljava/lang/String;
    :goto_5
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumArtist:Ljava/lang/String;

    .line 480
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v1, ""

    .line 481
    .local v1, "albumArtist":Ljava/lang/String;
    :goto_6
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->discNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v3, ""

    .line 483
    .local v3, "discNumber":Ljava/lang/String;
    :goto_7
    const/4 v8, 0x2

    invoke-direct {p0, v8, v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setTextToButtonEditTextView(ILjava/lang/String;)V

    .line 484
    const/4 v8, 0x1

    invoke-direct {p0, v8, v5}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setTextToButtonEditTextView(ILjava/lang/String;)V

    .line 485
    const/4 v8, 0x3

    invoke-direct {p0, v8, v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setTextToButtonEditTextView(ILjava/lang/String;)V

    .line 486
    const/4 v8, 0x5

    invoke-direct {p0, v8, v4}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setTextToButtonEditTextView(ILjava/lang/String;)V

    .line 487
    const/4 v8, 0x6

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setTextToButtonEditTextView(ILjava/lang/String;)V

    .line 488
    const/4 v8, 0x7

    invoke-direct {p0, v8, v6}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setTextToButtonEditTextView(ILjava/lang/String;)V

    .line 489
    const/4 v8, 0x4

    invoke-direct {p0, v8, v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setTextToButtonEditTextView(ILjava/lang/String;)V

    .line 490
    const/16 v8, 0x8

    invoke-direct {p0, v8, v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setTextToButtonEditTextView(ILjava/lang/String;)V

    .line 491
    return-void

    .line 473
    .end local v0    # "album":Ljava/lang/String;
    .end local v1    # "albumArtist":Ljava/lang/String;
    .end local v2    # "artist":Ljava/lang/String;
    .end local v3    # "discNumber":Ljava/lang/String;
    .end local v4    # "genre":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "trackNumber":Ljava/lang/String;
    .end local v7    # "year":Ljava/lang/String;
    :cond_0
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artist:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 474
    .restart local v2    # "artist":Ljava/lang/String;
    :cond_1
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 475
    .restart local v5    # "title":Ljava/lang/String;
    :cond_2
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->album:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 476
    .restart local v0    # "album":Ljava/lang/String;
    :cond_3
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->genre:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 477
    .restart local v4    # "genre":Ljava/lang/String;
    :cond_4
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->year:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 478
    .restart local v7    # "year":Ljava/lang/String;
    :cond_5
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->track:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 480
    .restart local v6    # "trackNumber":Ljava/lang/String;
    :cond_6
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumArtist:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 481
    .restart local v1    # "albumArtist":Ljava/lang/String;
    :cond_7
    iget-object v8, p1, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->discNumber:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_7
.end method

.method private fillMetaInfoFromReader(Ljava/lang/String;)V
    .locals 5
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 460
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    sget-object v4, Lcom/samsung/android/app/music/common/metaedit/MetaEditConstants;->SUPPORTED_META_TYPES:Ljava/util/List;

    .line 461
    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->read(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 462
    .local v1, "metaInfoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 463
    const-string v3, "metaInfoArray is null."

    const v4, 0x7f0a00ba

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->finishActivityWithToast(Ljava/lang/String;I)V

    .line 470
    :cond_0
    return-void

    .line 466
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 467
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 468
    .local v2, "metaType":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->fillEditText(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;Ljava/lang/String;)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private finishActivityWithToast(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "toastRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 574
    const-string v0, "SMUSIC-MetaEditor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 576
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setResult(I)V

    .line 577
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->finish()V

    .line 578
    return-void
.end method

.method private getEncodingEntry(II)Ljava/lang/String;
    .locals 2
    .param p1, "desc"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "encodingName"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSADetailString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "encoding"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 263
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You should check encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :sswitch_0
    const-string v1, "None"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "UTF-16"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "EUC-KR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "GBK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "Big5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 249
    :pswitch_0
    const-string v0, "None"

    .line 261
    :goto_1
    return-object v0

    .line 251
    :pswitch_1
    const-string v0, "Unicode (UTF-8)"

    goto :goto_1

    .line 253
    :pswitch_2
    const-string v0, "Unicode (UTF-16)"

    goto :goto_1

    .line 255
    :pswitch_3
    const-string v0, "Korean (EUC-KR)"

    goto :goto_1

    .line 257
    :pswitch_4
    const-string v0, "Japanese (JIS)"

    goto :goto_1

    .line 259
    :pswitch_5
    const-string v0, "Simplified Chinese (GBK)"

    goto :goto_1

    .line 261
    :pswitch_6
    const-string v0, "Traditional Chinese (BIG5)"

    goto :goto_1

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a33dbd5 -> :sswitch_2
        -0x534a3669 -> :sswitch_4
        0x112d0 -> :sswitch_5
        0x1f9755 -> :sswitch_6
        0x252358 -> :sswitch_0
        0x4d50972 -> :sswitch_1
        0x7a8b57e1 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private hideProgressDialog()V
    .locals 4

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 552
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-static {}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->access$1700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;

    .line 553
    .local v0, "f":Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->dismiss()V

    .line 555
    const-string v2, "MetaEditor"

    const-string v3, "hideProgressDialog()"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_0
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 403
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 404
    new-instance v1, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;-><init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mActionMenuController:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    .line 405
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mActionMenuController:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->setEnabledDoneButton(Z)V

    .line 406
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mActionMenuController:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 408
    :cond_0
    return-void
.end method

.method private initEditTextViews(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 411
    const v8, 0x7f1200b8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 412
    .local v5, "titleView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    const v8, 0x7f120129

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 413
    .local v2, "artistView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    const v8, 0x7f120270

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 414
    .local v1, "albumView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    const v8, 0x7f120272

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 415
    .local v4, "genreView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    const v8, 0x7f120274

    .line 416
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 417
    .local v7, "yearView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    const v8, 0x7f120050

    .line 418
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 419
    .local v6, "trackNumberView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    const v8, 0x7f120277

    .line 420
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 421
    .local v0, "albumArtistView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    const v8, 0x7f120279

    .line 422
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 424
    .local v3, "discNumberView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    const/4 v9, 0x6

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    const/4 v9, 0x7

    invoke-virtual {v8, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    const/16 v9, 0x8

    invoke-virtual {v8, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    return-void
.end method

.method private initSpinner(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0a0218

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v2, 0x7f0a013b

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    const v2, 0x7f0a04ca

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getEncodingEntry(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    const v2, 0x7f0a04c9

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getEncodingEntry(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    const v2, 0x7f0a00d5

    const v3, 0x7f0a0490

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getEncodingEntry(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    const v2, 0x7f0a00d3

    const v3, 0x7f0a0493

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getEncodingEntry(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    const v2, 0x7f0a01b0

    const v3, 0x7f0a0492

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getEncodingEntry(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    const v2, 0x7f0a01d2

    const v3, 0x7f0a047d

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getEncodingEntry(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 447
    .local v0, "adapter":Landroid/widget/ArrayAdapter;
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 448
    const v2, 0x7f12026d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncodingSpinner:Landroid/widget/Spinner;

    .line 449
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncodingSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 450
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncodingSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 451
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 389
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 391
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    sget v2, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 393
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 394
    const-string v2, "MetaEditor"

    const-string v3, "full_screen_adjust_resize attribute is set."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const v2, 0x7f12026c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mGuideText:Landroid/widget/TextView;

    .line 397
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->initEditTextViews(Landroid/view/View;)V

    .line 398
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->initSpinner(Landroid/view/View;)V

    goto :goto_0
.end method

.method private isEmptyAll()Z
    .locals 4

    .prologue
    .line 560
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 561
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 562
    .local v0, "editTextView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 563
    const/4 v2, 0x0

    .line 566
    .end local v0    # "editTextView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    :goto_1
    return v2

    .line 560
    .restart local v0    # "editTextView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v0    # "editTextView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private saveMetaInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 501
    const-string v5, "MetaEditor"

    const-string/jumbo v6, "saveMetaInfo()"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->isEmptyAll()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 503
    const v5, 0x7f0a0175

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 504
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 534
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 508
    .local v0, "editArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 509
    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 510
    .local v3, "metaType":I
    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 511
    .local v1, "editTextView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 508
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 516
    .end local v1    # "editTextView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    .end local v3    # "metaType":I
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    iget-object v6, v6, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->data:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mOnCompletedEditingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    iget-object v8, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncoding:Ljava/lang/String;

    .line 517
    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->write(Landroid/util/SparseArray;Ljava/lang/String;Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;Ljava/lang/String;)I

    move-result v4

    .line 518
    .local v4, "result":I
    const-string v5, "SMUSIC-MetaEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task fragment write result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v5, -0x2

    if-ne v4, v5, :cond_3

    .line 520
    const v5, 0x7f0a0106

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 521
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 523
    :cond_3
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 524
    const v5, 0x7f0a00ba

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 529
    :cond_4
    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mIsPlaying:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mChangedAnotherTrack:Z

    if-nez v5, :cond_5

    .line 530
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mPausedByEditor:Z

    .line 531
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->pause()V

    .line 533
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->showProgressDialog()V

    goto :goto_0
.end method

.method private setTextToButtonEditTextView(ILjava/lang/String;)V
    .locals 2
    .param p1, "metaType"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEditTextViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 495
    .local v0, "editTextView":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->setText(Ljava/lang/String;)V

    .line 498
    :cond_0
    return-void
.end method

.method private showProgressDialog()V
    .locals 5

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 538
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 539
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-static {}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->access$1700()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 540
    .local v2, "prevFragment":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 542
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 544
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 545
    const v3, 0x7f0a0156

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->access$1800(I)Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;

    move-result-object v3

    const-string v4, "MetaEditor"

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$ProgressDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 546
    const-string v3, "MetaEditor"

    const-string/jumbo v4, "showProgressDialog()"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "currentTrackUri"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 228
    sget-object v2, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->sPossibleToEdit:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 229
    .local v1, "savedResult":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 230
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 231
    const v2, 0x7f0a00c3

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 244
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 234
    const v2, 0x7f0a00ba

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 238
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "extra_uri_string"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    if-eqz p2, :cond_2

    .line 241
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 243
    :cond_2
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 374
    const-string v0, "308"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setResult(I)V

    .line 362
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onBackPressed()V

    .line 363
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0a00ba

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 269
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->UX_VERSION_2015A:Z

    if-eqz v1, :cond_0

    .line 270
    const v1, 0x7f0f00bc

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setTheme(I)V

    .line 272
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 273
    const v1, 0x7f0400d3

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->setContentView(I)V

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->initActionBar()V

    .line 276
    const v1, 0x7f12026b

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->initView(Landroid/view/View;)V

    .line 278
    invoke-static {}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getMetaData()Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    .line 279
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    if-nez v1, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 281
    .local v9, "i":Landroid/content/Intent;
    if-nez v9, :cond_1

    .line 282
    const-string v1, "Intent is null."

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->finishActivityWithToast(Ljava/lang/String;I)V

    .line 335
    .end local v9    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 285
    .restart local v9    # "i":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "extra_uri_string"

    .line 286
    invoke-virtual {v9, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 285
    invoke-static {v1, v4}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getMetaData(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    .line 287
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    if-nez v1, :cond_2

    .line 288
    const-string v1, "Meta Data is null."

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->finishActivityWithToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 293
    .end local v9    # "i":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 294
    .local v8, "fragmentManager":Landroid/app/FragmentManager;
    sget-object v1, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->TAG:Ljava/lang/String;

    .line 295
    invoke-virtual {v8, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    .line 296
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    if-nez v1, :cond_3

    .line 297
    new-instance v1, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    .line 298
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    sget-object v5, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 301
    :cond_3
    const-string v1, "MetaEditor"

    const-string/jumbo v4, "onCreate : TaskFragment created or founded."

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    if-nez p1, :cond_4

    .line 304
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    iget-object v3, v3, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->data:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    iget-wide v4, v4, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->audioId:J

    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mMetaData:Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    iget-object v6, v6, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->genre:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mOnCompletedParsingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->parse(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;)V

    .line 306
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "308"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mOnCompletedParsingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->setOnCompletedParsingListener(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;)V

    .line 309
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mOnCompletedEditingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->setOnCompletedEditingListener(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;)V

    .line 311
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mTaskFragment:Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    sget-object v4, Lcom/samsung/android/app/music/common/metaedit/MetaEditConstants;->SUPPORTED_META_TYPES:Ljava/util/List;

    .line 312
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->getEncodingIfUnified(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    move v0, v2

    .line 314
    .local v0, "encodingUnifiedUnicode":Z
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncodingSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_5

    move v3, v2

    :cond_5
    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 315
    if-eqz v0, :cond_6

    .line 316
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mGuideText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    :cond_6
    const-string v1, "MetaEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoding unified as : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncodingSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 325
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncodingSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$5;-><init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 331
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mActionMenuController:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$MetaEditActionMenuController;->setEnabledDoneButton(Z)V

    .line 333
    const-string v1, "key_encoding_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncoding:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0    # "encodingUnifiedUnicode":Z
    :cond_7
    move v0, v3

    .line 312
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 351
    const-string v1, "input_method"

    .line 352
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 353
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 356
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 357
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 367
    const-string v0, "key_encoding_type"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 369
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mCoreMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 340
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onStart()V

    .line 341
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->mCoreMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 346
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onStop()V

    .line 347
    return-void
.end method
