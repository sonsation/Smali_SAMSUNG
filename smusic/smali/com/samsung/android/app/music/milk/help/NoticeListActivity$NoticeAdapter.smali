.class Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NoticeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/help/NoticeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoticeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/help/NoticeListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/help/NoticeListActivity;Landroid/content/Context;I)V
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
    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;->this$0:Lcom/samsung/android/app/music/milk/help/NoticeListActivity;

    .line 120
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 121
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
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
    const/4 v6, 0x0

    .line 126
    if-nez p2, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400ea

    .line 128
    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/help/NoticeListActivity$NoticeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;

    .line 133
    .local v2, "item":Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;
    const v3, 0x7f1200b8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->getMenuNoticeTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->getMenuNoticeDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItem;->getMenuNoticeDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "date":[Ljava/lang/String;
    const v3, 0x7f120173

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 140
    .local v1, "description":Landroid/widget/TextView;
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    .end local v0    # "date":[Ljava/lang/String;
    .end local v1    # "description":Landroid/widget/TextView;
    :cond_1
    return-object p2
.end method
