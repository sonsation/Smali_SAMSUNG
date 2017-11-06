.class Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/help/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEVICE_ID_POSITION:I = 0x2

.field private static final FAQ_POSITION:I = 0x1

.field private static final NOTICE_POSITION:I


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/help/HelpActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/help/HelpActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;->this$0:Lcom/samsung/android/app/music/milk/help/HelpActivity;

    .line 92
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 98
    if-nez p2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400ea

    .line 100
    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;

    .line 105
    .local v2, "item":Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;
    const v4, 0x7f1200b8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 107
    const v4, 0x7f120173

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, "description":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    .end local v0    # "description":Landroid/widget/TextView;
    :goto_0
    return-object p2

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;->this$0:Lcom/samsung/android/app/music/milk/help/HelpActivity;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [I

    const v7, 0x10100fb

    aput v7, v6, v8

    const v7, 0x1010074

    .line 112
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/app/music/milk/help/HelpActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 114
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
