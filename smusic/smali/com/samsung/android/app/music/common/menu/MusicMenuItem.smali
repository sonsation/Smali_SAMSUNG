.class Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.super Ljava/lang/Object;
.source "MusicMenuItem.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final mIdRes:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;->mIdRes:I

    .line 17
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 21
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 25
    return-void
.end method

.method final setItemVisible(Landroid/view/Menu;Z)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "visible"    # Z

    .prologue
    .line 33
    iget v1, p0, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;->mIdRes:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 34
    .local v0, "menuItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 37
    :cond_0
    return-void
.end method
