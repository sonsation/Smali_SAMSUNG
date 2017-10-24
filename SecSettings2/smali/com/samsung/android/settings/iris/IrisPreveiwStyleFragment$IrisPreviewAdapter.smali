.class public Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "IrisPreveiwStyleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IrisPreviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPreviewArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field resource:I

.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mPreviewArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p3, "mPreviewArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 202
    const-string/jumbo v0, "IrisPreviewAdapter"

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->TAG:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mContext:Landroid/content/Context;

    .line 212
    iput-object p3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mPreviewArrayList:Ljava/util/ArrayList;

    .line 214
    const-string/jumbo v0, "layout_inflater"

    .line 213
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 215
    iput p4, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->resource:I

    .line 210
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mPreviewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 233
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 240
    if-nez p2, :cond_1

    .line 241
    new-instance v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;-><init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;)V

    .line 242
    .local v0, "holder":Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->resource:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 245
    const v2, 0x7f110419

    .line 244
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mPreviewLayout:Landroid/widget/LinearLayout;

    .line 247
    const v2, 0x7f110406

    .line 246
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mCheckBtnLayout:Landroid/widget/LinearLayout;

    .line 249
    const v2, 0x7f11041a

    .line 248
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mPrevImg:Landroid/widget/ImageView;

    .line 250
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mPreviewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 256
    .local v1, "mDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mPrevImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    iget v2, v2, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 259
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mPreviewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    iget v2, v2, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    if-ne p1, v2, :cond_2

    .line 263
    iget-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mCheckBtnLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    :goto_1
    iget-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mPreviewLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;-><init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    return-object p2

    .line 252
    .end local v0    # "holder":Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;
    .end local v1    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;

    .restart local v0    # "holder":Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;
    goto :goto_0

    .line 265
    .restart local v1    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mCheckBtnLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
