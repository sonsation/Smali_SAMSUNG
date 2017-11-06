.class public Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;
.super Landroid/app/Fragment;
.source "MetaEditTaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment$EditResult;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field private static final sSamsungAnalyticsIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

.field private mMediaMetaWriter:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

.field private mParsedMetadata:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-class v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->LOG_TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "4164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "4165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "4166"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "4167"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "4168"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "4169"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "4170"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "4171"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private checkModified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "parsedName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "editName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 256
    if-nez p1, :cond_2

    .line 257
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 257
    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isSafeCharacters(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "parsedName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "editName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 216
    if-nez p1, :cond_1

    .line 218
    sget-object v3, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->LOG_TAG:Ljava/lang/String;

    const-string v4, "New insert case."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return v2

    .line 222
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    sget-object v3, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not changed. parsedName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "parsedKey":Ljava/lang/String;
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "editKey":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    :cond_3
    sget-object v2, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key is the same. parsedName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", editName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendSALoggingIfModified(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "parsed":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p2, "edited":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    .line 241
    .local v2, "manager":Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 242
    .local v0, "a":Landroid/app/Activity;
    const-string v4, "308"

    .line 243
    .local v4, "screenId":Ljava/lang/String;
    instance-of v5, v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v5, :cond_0

    .line 244
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .end local v0    # "a":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v4

    .line 247
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 248
    sget-object v5, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 249
    .local v3, "metaType":I
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->checkModified(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    sget-object v5, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sSamsungAnalyticsIdMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v3    # "metaType":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getEncodingIfUnified(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "metaTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cannot get encoding. parse not called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->checkUnifiedUnicodeEncoding(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->setRetainInstance(Z)V

    .line 78
    return-void
.end method

.method public parse(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "audioId"    # J
    .param p5, "genre"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

    .prologue
    .line 87
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    .line 88
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaWriter:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaWriter:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    invoke-virtual {v0, p5}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->setGenre(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    invoke-virtual {v0, p6}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->setOnCompletedParsingListener(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->parse(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public read(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 2
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "metaTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cannot read. parse not called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->read(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mParsedMetadata:Landroid/util/SparseArray;

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mParsedMetadata:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method public setOnCompletedEditingListener(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaWriter:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaWriter:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->setOnCompletedEditingListener(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setOnCompletedParsingListener(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->setOnCompletedParsingListener(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;)V

    .line 103
    :cond_0
    return-void
.end method

.method public write(Landroid/util/SparseArray;Ljava/lang/String;Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;Ljava/lang/String;)I
    .locals 7
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;
    .param p4, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "editArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v2, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 153
    iget-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaWriter:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    if-nez v3, :cond_2

    .line 154
    :cond_0
    sget-object v3, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Cannot write. parse not called."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    :goto_0
    return v2

    .line 160
    :cond_2
    const-string v3, "None"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 161
    invoke-static {}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getMetaData()Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    move-result-object v0

    .line 162
    .local v0, "meta":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 163
    .local v1, "parsedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artist:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    const/4 v3, 0x1

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->title:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->album:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    const/4 v3, 0x5

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->genre:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, ""

    :goto_4
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    const/4 v3, 0x6

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->year:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, ""

    :goto_5
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    const/4 v3, 0x7

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->track:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v2, ""

    :goto_6
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    const/4 v3, 0x4

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumArtist:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, ""

    :goto_7
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    const/16 v3, 0x8

    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->discNumber:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, ""

    :goto_8
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    .end local v0    # "meta":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    :goto_9
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->isSafeCharacters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->isSafeCharacters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 187
    :cond_3
    const/4 v2, -0x2

    goto/16 :goto_0

    .line 163
    .restart local v0    # "meta":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    :cond_4
    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 164
    :cond_5
    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 165
    :cond_6
    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 166
    :cond_7
    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->genre:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 167
    :cond_8
    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->year:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 168
    :cond_9
    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->track:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 169
    :cond_a
    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->albumArtist:Ljava/lang/String;

    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 171
    :cond_b
    iget-object v2, v0, Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;->discNumber:Ljava/lang/String;

    .line 172
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 175
    .end local v0    # "meta":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    .end local v1    # "parsedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_c
    iget-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mParsedMetadata:Landroid/util/SparseArray;

    if-nez v3, :cond_d

    .line 176
    sget-object v3, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->TAG:Ljava/lang/String;

    const-string v4, "Try to read one more because parsed data is null."

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v3, Lcom/samsung/android/app/music/common/metaedit/MetaEditConstants;->SUPPORTED_META_TYPES:Ljava/util/List;

    invoke-virtual {p0, v3, p4}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->read(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mParsedMetadata:Landroid/util/SparseArray;

    .line 178
    iget-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mParsedMetadata:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    .line 182
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mParsedMetadata:Landroid/util/SparseArray;

    .restart local v1    # "parsedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    goto :goto_9

    .line 191
    :cond_e
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->sendSALoggingIfModified(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 193
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaWriter:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->setOnCompletedEditingListener(Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;)V

    .line 194
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaWriter:Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/metaedit/MetaEditTaskFragment;->mMediaMetaReader:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->getResultCode()I

    move-result v3

    invoke-virtual {v2, p2, v3, p1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter;->write(Ljava/lang/String;ILandroid/util/SparseArray;)V

    .line 195
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
