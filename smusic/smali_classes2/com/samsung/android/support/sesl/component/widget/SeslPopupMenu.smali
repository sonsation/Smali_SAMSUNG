.class public Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;
.super Ljava/lang/Object;
.source "SeslPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnDismissListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private final mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field mMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnMenuItemClickListener;

.field mOnDismissListener:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnDismissListener;

.field final mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "gravity"    # I

    .prologue
    .line 79
    const v4, 0x1010300

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "gravity"    # I
    .param p4, "popupStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p5, "popupStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mAnchor:Landroid/view/View;

    .line 104
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V

    .line 119
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;ZII)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->setGravity(I)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 129
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->dismiss()V

    .line 244
    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$3;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->getGravity()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .locals 2
    .param p1, "menuRes"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->setGravity(I)V

    .line 142
    return-void
.end method

.method public setOnDismissListener(Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 262
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mOnDismissListener:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnDismissListener;

    .line 263
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnMenuItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 253
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$OnMenuItemClickListener;

    .line 254
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->show()V

    .line 235
    return-void
.end method
