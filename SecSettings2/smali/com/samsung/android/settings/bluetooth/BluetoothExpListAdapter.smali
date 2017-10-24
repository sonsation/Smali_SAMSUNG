.class public Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BluetoothExpListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceListGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerHeight:I

.field private mExpandableListView:Landroid/widget/SemExpandableListView;

.field private mIsDataChanged:Z

.field public mIsOnProgressAddVI:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field public mNeedUpdatePreference:Z

.field private mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mTypedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/SemExpandableListView;
    .param p3, "dividerHeight"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 65
    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    .line 66
    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    .line 72
    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    .line 74
    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsDataChanged:Z

    .line 76
    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    .line 78
    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 79
    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    .line 84
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    .line 86
    iput p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDividerHeight:I

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    const v2, 0x101008e

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    .line 83
    return-void
.end method


# virtual methods
.method public addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 2
    .param p1, "group"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public containsGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 1
    .param p1, "group"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    .prologue
    .line 192
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 194
    .local v0, "group":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "group":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreference(I)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 241
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 371
    move-object/from16 v6, p4

    .line 373
    .local v6, "view":Landroid/view/View;
    if-nez p4, :cond_5

    .line 374
    const v2, 0x7f0401da

    .line 376
    .local v2, "layout":I
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v7, :cond_1

    .line 377
    :cond_0
    const v2, 0x7f0401db

    .line 380
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 381
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;)V

    .line 382
    .local v1, "holder":Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 383
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 384
    const v7, 0x1020010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 385
    const v7, 0x7f110561

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    .line 386
    const v7, 0x7f110560

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    .line 387
    const v7, 0x7f110146

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 388
    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 393
    .end local v2    # "layout":I
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v4

    .line 395
    .local v4, "preference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eqz v4, :cond_4

    .line 396
    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 397
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v7, "BluetoothExpListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getChildView ::  preference = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "isBonded = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 402
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0f01de

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 406
    :goto_1
    iget-object v8, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 408
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()I

    move-result v7

    if-eqz v7, :cond_8

    .line 409
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    :goto_3
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v7, :cond_9

    .line 425
    :cond_2
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 426
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    const/4 v5, 0x0

    .line 429
    .local v5, "rightPadding":I
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v7, :cond_b

    .line 430
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a025d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 434
    :goto_4
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v5, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 438
    .end local v5    # "rightPadding":I
    :cond_3
    :goto_5
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 439
    if-eqz p3, :cond_c

    .line 440
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 446
    .end local v0    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    :goto_6
    return-object v6

    .line 390
    .end local v1    # "holder":Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;
    .end local v4    # "preference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 404
    .restart local v0    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "preference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :cond_6
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0f01df

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 406
    :cond_7
    const/4 v7, 0x1

    goto :goto_2

    .line 412
    :cond_8
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 418
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v7, :cond_2

    .line 419
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    if-eqz v7, :cond_a

    .line 421
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->details:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 424
    :cond_a
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    .line 432
    .restart local v5    # "rightPadding":I
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a025c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_4

    .line 442
    .end local v5    # "rightPadding":I
    :cond_c
    iget-object v7, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->divider:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 9
    .param p1, "groupId"    # J
    .param p3, "childId"    # J

    .prologue
    .line 251
    long-to-int v1, p1

    long-to-int v4, p3

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v0

    .line 253
    .local v0, "child":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getChildId()J

    move-result-wide v2

    .line 255
    .local v2, "modifiedChildId":J
    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, p1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    const-wide/high16 v6, -0x8000000000000000L

    or-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v6, v2

    or-long/2addr v4, v6

    return-wide v4

    .line 257
    .end local v2    # "modifiedChildId":J
    :cond_0
    const-string/jumbo v1, "BluetoothExpListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCombinedChildId :: child preference is null, groupId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", childId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public getCombinedGroupId(J)J
    .locals 3
    .param p1, "groupId"    # J

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroup(I)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroup(I)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 236
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupPosition(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I
    .locals 1
    .param p1, "group"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 271
    move-object/from16 v13, p3

    .line 273
    .local v13, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 275
    .local v7, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroup(I)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v2

    .line 276
    .local v2, "group":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    const-string/jumbo v14, "BluetoothExpListAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getGroupView :: groupPosition = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",  getPreferenceCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " , isExpanded = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v14

    if-eqz v14, :cond_2

    .line 279
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 284
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChildrenCount(I)I

    move-result v14

    if-nez v14, :cond_3

    .line 285
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :goto_1
    new-instance v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;)V

    .line 292
    .local v5, "holder":Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getLayoutResource()I

    move-result v14

    const v15, 0x7f0401d9

    if-ne v14, v15, :cond_6

    .line 293
    const v14, 0x7f11055d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    iput-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    .line 294
    const v14, 0x7f11055e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 295
    const v14, 0x7f11055f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 296
    invoke-virtual {v13, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 298
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 299
    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 302
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v14, v14, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v14, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0243

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 304
    .local v9, "marginLeftRight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0244

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 305
    .local v10, "marginTopBottom":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0245

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 307
    .local v4, "helpTextTopMargin":I
    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 308
    .local v8, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 309
    .local v12, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v9, v10, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 310
    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v4, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 313
    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v15, 0x7f0f01d8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 316
    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v15, 0x7f0f01d9

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 319
    .end local v4    # "helpTextTopMargin":I
    .end local v8    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "marginLeftRight":I
    .end local v10    # "marginTopBottom":I
    .end local v12    # "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 321
    .local v3, "height":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ge v6, v14, :cond_4

    .line 322
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int v14, v3, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDividerHeight:I

    sub-int v3, v14, v15

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 281
    .end local v3    # "height":I
    .end local v5    # "holder":Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;
    .end local v6    # "i":I
    :cond_2
    move-object/from16 v0, p4

    invoke-static {v7, v0}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    goto/16 :goto_0

    .line 287
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 325
    .restart local v3    # "height":I
    .restart local v5    # "holder":Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;
    .restart local v6    # "i":I
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    .line 326
    invoke-virtual {v13, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v14

    if-nez v14, :cond_5

    .line 329
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :goto_3
    const v14, 0x7f11055c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    new-instance v15, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    .end local v3    # "height":I
    .end local v6    # "i":I
    :goto_4
    return-object v13

    .line 331
    .restart local v3    # "height":I
    .restart local v6    # "i":I
    :cond_5
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 343
    .end local v3    # "height":I
    .end local v6    # "i":I
    :cond_6
    const v14, 0x1020016

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 344
    invoke-virtual {v13, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 345
    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v14, v14, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v14, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    instance-of v14, v14, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v14, :cond_9

    .line 348
    :cond_7
    const v14, 0x7f110196

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 349
    .local v11, "progressBar":Landroid/view/View;
    const v14, 0x7f11057a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 351
    .local v1, "divider":Landroid/view/View;
    if-eqz v11, :cond_8

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->isProgress()Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->isVisibleDivider()Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 355
    .end local v1    # "divider":Landroid/view/View;
    .end local v11    # "progressBar":Landroid/view/View;
    :cond_9
    iget-object v14, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v15, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4

    .line 351
    .restart local v1    # "divider":Landroid/view/View;
    .restart local v11    # "progressBar":Landroid/view/View;
    :cond_a
    const/16 v14, 0x8

    goto :goto_5

    .line 352
    :cond_b
    const/16 v14, 0x8

    goto :goto_6
.end method

.method public getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 3

    .prologue
    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 202
    .local v0, "group":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "group":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSelectedDeviceList()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method public getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I
    .locals 3
    .param p1, "childPosition"    # I
    .param p2, "sortedFlatList"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    .line 177
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupPosition(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v2

    invoke-static {v2, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 178
    .local v0, "packedPosition":J
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v2

    return v2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailableDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3
    .param p1, "group"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b1173

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3
    .param p1, "group"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0b1172

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 142
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    .line 207
    return-void
.end method

.method public removePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->remove(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method

.method public removePreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V
    .locals 0
    .param p1, "preferenceGroup"    # Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 93
    return-void
.end method

.method public sortPreferenceGroup()V
    .locals 3

    .prologue
    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 137
    .local v0, "group":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "group":Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    :cond_0
    return-void
.end method

.method public declared-synchronized updateDeviceListGroup(Z)V
    .locals 1
    .param p1, "shouldSort"    # Z

    .prologue
    monitor-enter p0

    .line 147
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->sortPreferenceGroup()V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 146
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
