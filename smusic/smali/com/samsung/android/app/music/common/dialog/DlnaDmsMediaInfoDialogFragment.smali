.class public Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;
.super Landroid/app/DialogFragment;
.source "DlnaDmsMediaInfoDialogFragment.java"


# static fields
.field private static final DETAIL_INFO:Ljava/lang/String; = "detail_info"

.field private static final DETAIL_TYPE:Ljava/lang/String; = "detail_type"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDuration:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "detailType"    # Ljava/lang/String;
    .param p3, "detailInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v0, "tempItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const v1, 0x7f0a0219

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 192
    :cond_0
    const-string v1, "detail_type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "detail_info"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method private getAllShareDetalInfo()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v9, 0x7f0a01ce

    const v8, 0x7f0a01c9

    const v7, 0x7f0a00c5

    const v6, 0x7f0a00c2

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "list_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "listType":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 73
    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getMediaInfo(Landroid/content/Context;ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    move-result-object v1

    .line 76
    .local v1, "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v3, "simpleInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v1, :cond_1

    .line 78
    const-string v4, "MusicSimpleInfo"

    const-string v5, "There are no information about current song."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return-object v3

    .line 82
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setDurationInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)V

    .line 84
    packed-switch v2, :pswitch_data_0

    .line 97
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setTitleInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->mDuration:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setMimeTypeInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const v4, 0x1000b

    if-ne v2, v4, :cond_0

    .line 102
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setFileSizeInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const v4, 0x7f0a0149

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setDmsDeviceInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_0
    const v4, 0x7f0a007c

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setArtistInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setTitleInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const v4, 0x7f0a0071

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setAlbumInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->mDuration:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const v4, 0x7f0a00c6

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setGenreInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setMimeTypeInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->setFileSizeInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->addItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x10000e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getNewInstance(Ljava/lang/String;I)Landroid/app/DialogFragment;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "listType"    # I

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "list_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;-><init>()V

    .line 40
    .local v1, "fg":Landroid/app/DialogFragment;
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method

.method private setAlbumInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    .prologue
    .line 173
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->album:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->album:Ljava/lang/String;

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a0219

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setArtistInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    .prologue
    .line 180
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->artist:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->artist:Ljava/lang/String;

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a0219

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setDmsDeviceInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    .prologue
    .line 145
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->dmsName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->dmsName:Ljava/lang/String;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a0219

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setDurationInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    .line 112
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->duration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 113
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->duration:J

    div-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->mDuration:Ljava/lang/String;

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->duration()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->duration:J

    .line 117
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->duration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 118
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->duration:J

    div-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->mDuration:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->mDuration:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 123
    const v0, 0x7f0a0219

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->mDuration:Ljava/lang/String;

    goto :goto_0
.end method

.method private setFileSizeInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 130
    iget-wide v4, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->fileSize:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 131
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-wide v4, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->fileSize:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double v2, v4, v6

    .local v2, "result":D
    cmpl-double v1, v2, v10

    if-ltz v1, :cond_0

    .line 134
    const v1, 0x7f0a01b4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v2    # "result":D
    :goto_0
    return-object v1

    .line 135
    .restart local v0    # "df":Ljava/text/DecimalFormat;
    .restart local v2    # "result":D
    :cond_0
    iget-wide v4, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->fileSize:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v2, v4, v6

    cmpl-double v1, v2, v10

    if-ltz v1, :cond_1

    .line 136
    const v1, 0x7f0a01b3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 138
    :cond_1
    const v1, 0x7f0a01b2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v6, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->fileSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 141
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v2    # "result":D
    :cond_2
    const v1, 0x7f0a0219

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setGenreInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    .prologue
    .line 159
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->genre:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->genre:Ljava/lang/String;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a0219

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setMimeTypeInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    .prologue
    .line 152
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->mimeType:Ljava/lang/String;

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a0219

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setTitleInfo(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    .prologue
    .line 166
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->title:Ljava/lang/String;

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a0219

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->mDuration:Ljava/lang/String;

    .line 50
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 55
    .local v1, "a":Landroid/app/Activity;
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getAllShareDetalInfo()Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x7f0400ad

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "detail_type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "detail_info"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 59
    .local v0, "mAdapter":Landroid/widget/SimpleAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a00f5

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v0, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0146

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 55
    nop

    :array_0
    .array-data 4
        0x7f120236
        0x7f120237
    .end array-data
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const-string v0, "duration"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/DlnaDmsMediaInfoDialogFragment;->mDuration:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method
