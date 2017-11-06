.class final Lcom/samsung/android/app/music/common/menu/HiddenMenuItem;
.super Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.source "HiddenMenuItem.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;-><init>(I)V

    .line 10
    return-void
.end method


# virtual methods
.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/HiddenMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    .line 15
    return-void
.end method
