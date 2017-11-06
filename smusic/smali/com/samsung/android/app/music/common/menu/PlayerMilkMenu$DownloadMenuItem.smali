.class Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$DownloadMenuItem;
.super Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.source "PlayerMilkMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadMenuItem"
.end annotation


# instance fields
.field private final mDownloadable:Lcom/samsung/android/app/music/download/Downloadable;


# direct methods
.method constructor <init>(ILcom/samsung/android/app/music/download/Downloadable;)V
    .locals 0
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "downloadable"    # Lcom/samsung/android/app/music/download/Downloadable;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;-><init>(I)V

    .line 298
    iput-object p2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$DownloadMenuItem;->mDownloadable:Lcom/samsung/android/app/music/download/Downloadable;

    .line 299
    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$DownloadMenuItem;->mDownloadable:Lcom/samsung/android/app/music/download/Downloadable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/download/Downloadable;->download()V

    .line 309
    const-string v0, "4326"

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$DownloadMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    .line 304
    return-void
.end method
