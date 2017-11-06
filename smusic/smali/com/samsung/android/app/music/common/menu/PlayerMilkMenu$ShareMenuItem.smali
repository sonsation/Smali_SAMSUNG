.class Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$ShareMenuItem;
.super Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.source "PlayerMilkMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShareMenuItem"
.end annotation


# instance fields
.field private final mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;


# direct methods
.method constructor <init>(ILcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V
    .locals 0
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "shareable"    # Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;-><init>(I)V

    .line 276
    iput-object p2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$ShareMenuItem;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    .line 277
    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$ShareMenuItem;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;->share()V

    .line 287
    const-string v0, "4027"

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$ShareMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    .line 282
    return-void
.end method
