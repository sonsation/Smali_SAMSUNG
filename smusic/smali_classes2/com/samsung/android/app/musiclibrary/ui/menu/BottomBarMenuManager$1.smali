.class final Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$1;
.super Ljava/lang/Object;
.source "BottomBarMenuManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->newInstance(Landroid/app/Activity;Landroid/view/Menu;Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/view/ActionMode$Callback;

.field final synthetic val$menuItem:Landroid/view/MenuItem;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Landroid/view/ActionMode$Callback;Landroid/view/ActionMode;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$1;->val$callback:Landroid/view/ActionMode$Callback;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$1;->val$mode:Landroid/view/ActionMode;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$1;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$1;->val$callback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$1;->val$mode:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$1;->val$menuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 106
    return-void
.end method
