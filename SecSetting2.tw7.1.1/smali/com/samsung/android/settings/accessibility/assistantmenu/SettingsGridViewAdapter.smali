.class public Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;
    }
.end annotation


# static fields
.field private static mIsLongClick:Z


# instance fields
.field private mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

.field private final mHandler:Landroid/os/Handler;

.field private mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayout:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mIsLongClick:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mIsLongClick:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mIsLongClick:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;ILjava/util/ArrayList;Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Fragment;
    .param p2, "layout"    # I
    .param p4, "imageMode"    # Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .line 45
    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mHandler:Landroid/os/Handler;

    .line 63
    check-cast p1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .end local p1    # "context":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    .line 66
    iput p2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mLayout:I

    .line 67
    iput-object p4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    .line 61
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getName()Ljava/lang/String;

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
    const v8, 0x7f11079b

    .line 84
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v1

    .line 86
    .local v1, "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mLayout:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    const v5, 0x7f11079c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getIcon()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    const v5, 0x7f11079e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 91
    .local v2, "subImageView":Landroid/widget/ImageView;
    const v5, 0x7f11079d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 92
    .local v3, "subImagebackView":Landroid/widget/ImageView;
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v6, -0x20203

    invoke-virtual {v2, v6, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 94
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_1

    .line 95
    const v5, 0x7f02008d

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    const v5, -0xc941e1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 97
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    :goto_0
    const v5, 0x7f1105ee

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 111
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetIsWidgetVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetUpperDetectedItemId()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 120
    :goto_1
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, -0x333334

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 125
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    new-instance v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    return-object p2

    .line 99
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_2

    .line 100
    const v5, 0x7f02008c

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    const v5, -0xda2a3

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 102
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 105
    :cond_2
    const-string/jumbo v5, "SettingsGridViewAdapter"

    const-string/jumbo v6, "getView"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 118
    .restart local v4    # "textView":Landroid/widget/TextView;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetLowerDetectedItemId()I

    move-result v5

    if-ne v5, p1, :cond_0

    goto :goto_1
.end method
