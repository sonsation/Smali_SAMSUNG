.class Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$2;
.super Landroid/widget/ArrayAdapter;
.source "StyleableListPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->getListAdpater()Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;Landroid/content/Context;II[Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Landroid/view/MenuItem;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 249
    .local v2, "v":Landroid/view/View;
    if-nez p2, :cond_0

    .line 252
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 253
    check-cast v1, Landroid/widget/TextView;

    .line 258
    .local v1, "txt":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$2;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 260
    .local v0, "item":Landroid/view/MenuItem;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$2;->isEnabled(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 263
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v1    # "txt":Landroid/widget/TextView;
    :cond_0
    return-object v2

    .line 255
    :cond_1
    const v3, 0x7f120324

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "txt":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$2;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 269
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    return v1
.end method
