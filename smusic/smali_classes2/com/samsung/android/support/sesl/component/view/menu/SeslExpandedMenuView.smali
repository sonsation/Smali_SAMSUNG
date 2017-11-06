.class public final Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;
.super Landroid/widget/ListView;
.source "SeslExpandedMenuView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mAnimations:I

.field private mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010129
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    sget-object v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->TINT_ATTRS:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 74
    return-void
.end method

.method public invokeItem(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 82
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->invokeItem(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    .line 93
    return-void
.end method
