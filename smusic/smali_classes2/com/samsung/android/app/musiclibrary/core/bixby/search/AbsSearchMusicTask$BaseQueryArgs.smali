.class public Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;
.super Ljava/lang/Object;
.source "AbsSearchMusicTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseQueryArgs"
.end annotation


# static fields
.field protected static final LOCAL_TRACK_SELECTION:Ljava/lang/String;


# instance fields
.field public final projection:[Ljava/lang/String;

.field protected selection:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected selectionArgs:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    .line 140
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;->LOCAL_TRACK_SELECTION:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;->uri:Landroid/net/Uri;

    .line 154
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;->projection:[Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "searchColumns"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "keywords"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;)V

    .line 164
    array-length v0, p3

    .line 165
    .local v0, "columnLength":I
    const/4 v6, 0x1

    if-ge v0, v6, :cond_0

    .line 192
    :goto_0
    return-void

    .line 169
    :cond_0
    array-length v3, p4

    .line 170
    .local v3, "keywordsLength":I
    mul-int v5, v0, v3

    .line 171
    .local v5, "selectionArgsLength":I
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 175
    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 177
    if-nez v2, :cond_1

    .line 178
    aget-object v6, p3, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIKE ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;->selectionArgs:[Ljava/lang/String;

    mul-int v7, v1, v3

    add-int/2addr v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 180
    :cond_1
    const-string v6, "AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIKE ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 184
    :cond_2
    add-int/lit8 v6, v0, -0x1

    if-ne v1, v6, :cond_3

    .line 185
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_3
    const-string v6, ") OR "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 190
    .end local v2    # "j":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;->selection:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BaseQueryArgs() - keywords: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->getDebugKeyword([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
