.class public Lcom/android/launcher3/appspicker/AppsPickerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsPickerListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsPickerListAdapter"


# instance fields
.field private mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

.field private mBouncedApp:Landroid/content/ComponentName;

.field private mBouncedAppUser:Landroid/os/UserHandle;

.field public mBouncedHiddenAppView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIsWhiteBg:Z

.field private mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field private mItemContainerClickListener:Landroid/view/View$OnClickListener;

.field private mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

.field private mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

.field private mMaxNumAppsPerRow:I

.field private mNumAppsPerRow:I

.field private mScreenMode:I

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apps"    # Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    .param p3, "isWhiteBg"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsPerRow()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    .line 49
    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mScreenMode:I

    .line 51
    iput-boolean p3, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mIsWhiteBg:Z

    .line 52
    iget-boolean v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mIsWhiteBg:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->setContentColorAndBackground(Z)V

    .line 53
    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$1;-><init>(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemContainerClickListener:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$2;-><init>(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    return-object v0
.end method

.method private createHolders(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;)[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "itemContainer"    # Landroid/widget/LinearLayout;
    .param p3, "title"    # Landroid/widget/TextView;
    .param p4, "header"    # Landroid/widget/LinearLayout;
    .param p5, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v8, -0x2

    .line 259
    iget v5, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    new-array v1, v5, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .line 260
    .local v1, "holders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 261
    const v5, 0x7f040011

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 262
    .local v3, "itemView":Landroid/view/ViewGroup;
    new-instance v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;

    invoke-direct {v5}, Lcom/android/launcher3/appspicker/AppIconViewHolder;-><init>()V

    aput-object v5, v1, v2

    .line 263
    aget-object v5, v1, v2

    iput-object v3, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    .line 264
    aget-object v6, v1, v2

    const v5, 0x7f110044

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    .line 265
    aget-object v6, v1, v2

    const v5, 0x7f110045

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    .line 266
    aget-object v6, v1, v2

    const v5, 0x7f110046

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 267
    aget-object v5, v1, v2

    iget v6, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mScreenMode:I

    iput v6, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->screenMode:I

    .line 269
    if-lez v2, :cond_0

    .line 270
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 272
    .local v0, "blankViewParam":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 273
    aget-object v5, v1, v2

    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    .line 274
    aget-object v5, v1, v2

    iget-object v5, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    invoke-virtual {p2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .end local v0    # "blankViewParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v4, "itemViewParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 279
    invoke-virtual {p2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v3    # "itemView":Landroid/view/ViewGroup;
    .end local v4    # "itemViewParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-object v1
.end method

.method private setContentColorAndBackground(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 285
    if-eqz p1, :cond_0

    const v0, 0x7f0e0005

    .line 286
    .local v0, "textColorId":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mTextColor:I

    .line 287
    return-void

    .line 285
    .end local v0    # "textColorId":I
    :cond_0
    const v0, 0x7f0e0006

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAppsMapSize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 97
    const-string v3, "AppsPickerListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItem position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v3, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getRowItems(I)Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, "rowItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    const/4 v0, 0x0

    .line 100
    .local v0, "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v2, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 101
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 102
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v0, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 104
    .end local v1    # "index":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAppsMapSize()I

    move-result v1

    if-lez v1, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    .line 113
    :cond_0
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, "title":Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 122
    .local v5, "header":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 124
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_1

    .line 125
    const v1, 0x7f04000f

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 126
    const v1, 0x7f110040

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .local v3, "itemContainer":Landroid/widget/LinearLayout;
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 127
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->createHolders(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;)[Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-result-object v7

    .line 128
    .local v7, "holders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    const v1, 0x7f110020

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "title":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 129
    .restart local v4    # "title":Landroid/widget/TextView;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 143
    .end local v3    # "itemContainer":Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    const-string v16, ""

    .line 146
    .local v16, "titleInitial":Ljava/lang/String;
    const v1, 0x7f11001f

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "header":Landroid/widget/LinearLayout;
    check-cast v5, Landroid/widget/LinearLayout;

    .line 147
    .restart local v5    # "header":Landroid/widget/LinearLayout;
    const v1, 0x7f110021

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .line 148
    .local v14, "line":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mTextColor:I

    invoke-virtual {v14, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getRowItems(I)Ljava/util/List;

    move-result-object v12

    .line 152
    .local v12, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    if-nez v12, :cond_2

    .line 153
    const-string v1, "AppsPickerListAdapter"

    const-string v6, "items is null"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object v7, v1

    check-cast v7, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .line 156
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    if-ge v8, v1, :cond_d

    .line 157
    aget-object v1, v7, v8

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 158
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 159
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 161
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 162
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 163
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 131
    .end local v7    # "holders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    .end local v8    # "i":I
    .end local v12    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    .end local v14    # "line":Landroid/widget/FrameLayout;
    .end local v16    # "titleInitial":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object v7, v1

    check-cast v7, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .line 132
    .restart local v7    # "holders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    const v1, 0x7f110020

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "title":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 134
    .restart local v4    # "title":Landroid/widget/TextView;
    const/4 v1, 0x0

    aget-object v1, v7, v1

    iget v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->screenMode:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mScreenMode:I

    if-eq v1, v6, :cond_0

    .line 135
    const/16 p2, 0x0

    .line 136
    const v1, 0x7f04000f

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    const v1, 0x7f110040

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3    # "itemContainer":Landroid/widget/LinearLayout;
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 138
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->createHolders(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;)[Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-result-object v7

    .line 139
    const v1, 0x7f110020

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "title":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 140
    .restart local v4    # "title":Landroid/widget/TextView;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 172
    .end local v3    # "itemContainer":Landroid/widget/LinearLayout;
    .restart local v12    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    .restart local v14    # "line":Landroid/widget/FrameLayout;
    .restart local v16    # "titleInitial":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    if-ge v8, v1, :cond_d

    .line 173
    const/4 v10, 0x0

    .line 174
    .local v10, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v15, 0x0

    .line 175
    .local v15, "rowFirstItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 176
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "rowFirstItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    check-cast v15, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 177
    .restart local v15    # "rowFirstItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v10, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 179
    :cond_3
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    if-ge v8, v1, :cond_a

    .line 180
    aget-object v1, v7, v8

    iput-object v10, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 181
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 182
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemContainerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 184
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    aget-object v6, v7, v8

    iget-object v6, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 185
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 186
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    aget-object v6, v7, v8

    iget-object v6, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 187
    aget-object v1, v7, v8

    iput v8, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->colIndex:I

    .line 188
    aget-object v1, v7, v8

    move/from16 v0, p1

    iput v0, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->rowIndex:I

    .line 189
    if-lez v8, :cond_4

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 190
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_4
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v10, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    aget-object v6, v7, v8

    iget-object v6, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mIsWhiteBg:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v1, v6, v0}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 194
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, v10, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    const/4 v11, 0x0

    .line 196
    .local v11, "isChecked":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    if-eqz v1, :cond_5

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    invoke-interface {v1, v10}, Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;->isCheckedItem(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v11

    .line 199
    :cond_5
    if-eqz v11, :cond_9

    .line 200
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v17, v7, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0900b4

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    :goto_3
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedApp:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedAppUser:Landroid/os/UserHandle;

    if-eqz v1, :cond_6

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedApp:Landroid/content/ComponentName;

    iget-object v6, v10, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedAppUser:Landroid/os/UserHandle;

    invoke-virtual {v10}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedHiddenAppView:Landroid/view/View;

    .line 210
    const-string v1, "AppsPickerListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "found : "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedHiddenAppView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v11    # "isChecked":Z
    :cond_6
    :goto_4
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_7

    if-eqz v15, :cond_7

    .line 238
    iget-object v0, v15, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 240
    :cond_7
    if-eqz v15, :cond_8

    iget v1, v15, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    const/4 v6, 0x1

    if-lt v1, v6, :cond_8

    .line 241
    iget v9, v15, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 242
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v6, v9, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_8

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v6, v9, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v13, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 244
    .local v13, "lastInitial":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 245
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    .end local v9    # "index":I
    .end local v13    # "lastInitial":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mTextColor:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 202
    .restart local v11    # "isChecked":Z
    :cond_9
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v17, v7, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f09007e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 214
    .end local v11    # "isChecked":Z
    :cond_a
    aget-object v1, v7, v8

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 215
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 216
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    if-ge v8, v1, :cond_c

    .line 218
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 219
    if-lez v8, :cond_b

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 220
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_b
    :goto_5
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 229
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 230
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 233
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 223
    :cond_c
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    if-lez v8, :cond_b

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 225
    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 252
    .end local v10    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v15    # "rowFirstItem":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_d
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mScreenMode:I

    .line 293
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsPerRow()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    .line 294
    return-void
.end method

.method public resetBouncedAppInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedApp:Landroid/content/ComponentName;

    .line 303
    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedAppUser:Landroid/os/UserHandle;

    .line 304
    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedHiddenAppView:Landroid/view/View;

    .line 305
    return-void
.end method

.method public setBouncedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedApp:Landroid/content/ComponentName;

    .line 298
    iput-object p2, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedAppUser:Landroid/os/UserHandle;

    .line 299
    return-void
.end method

.method public setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    .line 88
    return-void
.end method
