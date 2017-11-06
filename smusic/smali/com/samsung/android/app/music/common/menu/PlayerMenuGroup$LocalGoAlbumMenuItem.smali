.class Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoAlbumMenuItem;
.super Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.source "PlayerMenuGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalGoAlbumMenuItem"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAlbum:Ljava/lang/String;

.field private final mAlbumId:J


# direct methods
.method constructor <init>(ILandroid/app/Activity;JLjava/lang/String;)V
    .locals 1
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "albumId"    # J
    .param p5, "album"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;-><init>(I)V

    .line 451
    iput-object p2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoAlbumMenuItem;->mActivity:Landroid/app/Activity;

    .line 452
    iput-wide p3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoAlbumMenuItem;->mAlbumId:J

    .line 453
    iput-object p5, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoAlbumMenuItem;->mAlbum:Ljava/lang/String;

    .line 454
    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoAlbumMenuItem;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoAlbumMenuItem;->mAlbumId:J

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoAlbumMenuItem;->mAlbum:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->startActivity(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;)V

    .line 459
    const-string v0, "4323"

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x1

    return v0
.end method
