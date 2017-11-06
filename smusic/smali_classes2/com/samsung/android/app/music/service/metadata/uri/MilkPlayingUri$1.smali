.class Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri$1;
.super Ljava/lang/Object;
.source "MilkPlayingUri.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->getMilkPlayingUri(I)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri$1;->this$0:Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri$1;->val$url:Ljava/lang/String;

    return-object v0
.end method
