.class Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoArtistMenuItem;
.super Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.source "PlayerMenuGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalGoArtistMenuItem"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArtist:Ljava/lang/String;

.field private final mArtistId:J


# direct methods
.method constructor <init>(ILandroid/app/Activity;JLjava/lang/String;)V
    .locals 1
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "artistId"    # J
    .param p5, "artist"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;-><init>(I)V

    .line 521
    iput-object p2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoArtistMenuItem;->mActivity:Landroid/app/Activity;

    .line 522
    iput-wide p3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoArtistMenuItem;->mArtistId:J

    .line 523
    iput-object p5, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoArtistMenuItem;->mArtist:Ljava/lang/String;

    .line 524
    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoArtistMenuItem;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoArtistMenuItem;->mArtistId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoArtistMenuItem;->mArtist:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v0, "4324"

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 530
    const/4 v0, 0x1

    return v0
.end method
