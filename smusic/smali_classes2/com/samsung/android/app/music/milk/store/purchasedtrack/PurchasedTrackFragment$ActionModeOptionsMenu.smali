.class Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "PurchasedTrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 369
    const v0, 0x7f13000d

    .line 371
    .local v0, "resId":I
    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 372
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 373
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 377
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 379
    return-void
.end method
