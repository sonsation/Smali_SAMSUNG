.class public Lorg/brickred/socialauth/android/ShareButtonAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareButtonAdapter.java"


# instance fields
.field private final ctx:Landroid/content/Context;

.field data:[Ljava/lang/String;

.field imagesdata:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objects"    # [Ljava/lang/String;
    .param p3, "images"    # [I

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/brickred/socialauth/android/ShareButtonAdapter;->ctx:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lorg/brickred/socialauth/android/ShareButtonAdapter;->data:[Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lorg/brickred/socialauth/android/ShareButtonAdapter;->imagesdata:[I

    .line 53
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/brickred/socialauth/android/ShareButtonAdapter;->data:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 79
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x32

    const/16 v7, 0x1e

    const/4 v6, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 92
    if-nez p2, :cond_1

    .line 93
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/brickred/socialauth/android/ShareButtonAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v1, "text":Landroid/widget/TextView;
    :goto_0
    iget-object v2, p0, Lorg/brickred/socialauth/android/ShareButtonAdapter;->data:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lorg/brickred/socialauth/android/ShareButtonAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/brickred/socialauth/android/ShareButtonAdapter;->imagesdata:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    const/16 v3, 0x140

    if-eq v2, v3, :cond_0

    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_2

    .line 102
    :cond_0
    invoke-virtual {v0, v4, v4, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    :goto_1
    invoke-virtual {v1, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 107
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 110
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    return-object v1

    .end local v0    # "image":Landroid/graphics/drawable/Drawable;
    .end local v1    # "text":Landroid/widget/TextView;
    :cond_1
    move-object v1, p2

    .line 95
    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "text":Landroid/widget/TextView;
    goto :goto_0

    .line 104
    .restart local v0    # "image":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v0, v4, v4, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method
