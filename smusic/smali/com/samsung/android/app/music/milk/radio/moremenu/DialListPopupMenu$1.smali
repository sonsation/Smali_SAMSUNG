.class Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;
.super Landroid/widget/ArrayAdapter;
.source "DialListPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->getListAdpater()Landroid/widget/ListAdapter;
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
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;Landroid/content/Context;II[Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Landroid/view/MenuItem;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 97
    .local v2, "item":Landroid/view/MenuItem;
    const/4 v0, -0x1

    .line 98
    .local v0, "groupTitleId":I
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 99
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Ljava/util/HashMap;

    move-result-object v6

    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    :cond_0
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v0, v6, :cond_3

    .line 105
    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;

    .line 107
    .local v1, "holder":Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;
    iget-object p2, v1, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;->header:Landroid/view/View;

    .line 110
    .end local v1    # "holder":Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;
    :cond_1
    if-nez p2, :cond_2

    .line 111
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040119

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 114
    new-instance v6, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;

    invoke-direct {v6, p2, v9}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    :cond_2
    const v6, 0x7f12035c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 147
    .local v5, "txt":Landroid/widget/TextView;
    :goto_0
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-object p2

    .line 118
    .end local v5    # "txt":Landroid/widget/TextView;
    :cond_3
    if-eqz p2, :cond_4

    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;

    .line 120
    .restart local v1    # "holder":Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;
    iget-object p2, v1, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;->menuItem:Landroid/view/View;

    .line 123
    .end local v1    # "holder":Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;
    :cond_4
    if-nez p2, :cond_5

    .line 124
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04010c

    .line 125
    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 127
    new-instance v6, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;

    invoke-direct {v6, v9, p2}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    :cond_5
    const v6, 0x7f120324

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 132
    .restart local v5    # "txt":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;->isVisibleMenuItem(Landroid/view/MenuItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 133
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110152

    invoke-static {v6, v7, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 136
    .local v4, "normalColor":I
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    .line 137
    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)I

    move-result v6

    invoke-static {v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createColorSelector(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 138
    .local v3, "list":Landroid/content/res/ColorStateList;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;->isEnableMenuItem(Landroid/view/MenuItem;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;->access$200(Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;)Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/samsung/android/app/music/milk/radio/widget/IDialListPopupMenu;->isEnableMenuItem(Landroid/view/MenuItem;)Z

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 142
    .end local v3    # "list":Landroid/content/res/ColorStateList;
    .end local v4    # "normalColor":I
    :cond_6
    const-string v6, "DialListPopupMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View.GONE in menu list : item : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/16 v6, 0x8

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
