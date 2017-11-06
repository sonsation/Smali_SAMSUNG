.class Lcom/samsung/android/app/music/common/activity/PlayerActivity$1;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/PlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertCpAttrsToUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "cpAttrs"    # I

    .prologue
    .line 196
    invoke-static {p1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImageSizeResId()I
    .locals 1

    .prologue
    .line 201
    const v0, 0x7f0d0064

    return v0
.end method
