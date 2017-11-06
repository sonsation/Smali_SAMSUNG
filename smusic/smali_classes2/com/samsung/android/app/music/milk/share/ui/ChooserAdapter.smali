.class public Lcom/samsung/android/app/music/milk/share/ui/ChooserAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserAdapter.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mShareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/share/SnsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/share/SnsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "shareList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/share/SnsInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ChooserAdapter;->mActivity:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/ui/ChooserAdapter;->mShareList:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ChooserAdapter;->mShareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ChooserAdapter;->mShareList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ui/ChooserAdapter;->mShareList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .line 48
    .local v0, "info":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v2, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f120381

    const v9, 0x7f120380

    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/share/ui/ChooserAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 59
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040127

    const/4 v8, 0x0

    invoke-virtual {v5, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "container":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 62
    .local v4, "image":Landroid/widget/ImageView;
    invoke-virtual {v2, v9, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 64
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 65
    .local v6, "text":Landroid/widget/TextView;
    invoke-virtual {v2, v10, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 72
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/share/ui/ChooserAdapter;->mShareList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .line 74
    .local v3, "currInfo":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    iget-object v1, v3, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppLabel:Ljava/lang/String;

    .line 75
    .local v1, "appName":Ljava/lang/String;
    iget-object v0, v3, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    return-object v2

    .line 67
    .end local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "container":Landroid/view/View;
    .end local v3    # "currInfo":Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    .end local v4    # "image":Landroid/widget/ImageView;
    .end local v6    # "text":Landroid/widget/TextView;
    :cond_0
    move-object v2, p2

    .line 68
    .restart local v2    # "container":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 69
    .restart local v4    # "image":Landroid/widget/ImageView;
    invoke-virtual {v2, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .restart local v6    # "text":Landroid/widget/TextView;
    goto :goto_0
.end method
