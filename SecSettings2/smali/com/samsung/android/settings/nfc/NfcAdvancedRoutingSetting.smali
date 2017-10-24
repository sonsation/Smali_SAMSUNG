.class public Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;
.super Landroid/app/Activity;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;
    }
.end annotation


# static fields
.field private static ADVANCED_NFC_SETTINGS_BUTTON:I

.field private static mContext:Landroid/content/Context;


# instance fields
.field private adapter:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;

.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mCurrentKey:Ljava/lang/String;

.field private mCurrentRoute:Ljava/lang/String;

.field private mHeaderView:Landroid/view/View;

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mModeItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->ADVANCED_NFC_SETTINGS_BUTTON:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/cardemulation/CardEmulation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->ADVANCED_NFC_SETTINGS_BUTTON:I

    return p0
.end method

.method static synthetic -set1(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getGsimItemNo(Ljava/lang/String;)I
    .locals 2
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x3

    .line 171
    .local v0, "route_no":I
    const-string/jumbo v1, "UICC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const/4 v0, 0x0

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    const-string/jumbo v1, "DH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    const-string/jumbo v1, "ESE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v0, 0x2

    goto :goto_0
.end method

.method getItemKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getItemPosition(Ljava/lang/String;)I
    .locals 1
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v1, 0x400

    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 229
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 231
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v1, 0x7f040198

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->setContentView(I)V

    .line 97
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 98
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    .line 103
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    const-string/jumbo v2, "DESCRIPTIONS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b09c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    const-string/jumbo v2, "UICC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b09cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    const-string/jumbo v2, "DH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string/jumbo v1, "ESE"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    .line 114
    const-string/jumbo v3, "CscFeature_SmartcardSvc_HideTerminalCapability"

    const-string/jumbo v5, ""

    .line 113
    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b09cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    const-string/jumbo v2, "ESE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b09ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mKeyList:Ljava/util/ArrayList;

    const-string/jumbo v2, "AUTO_SELECT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    const v1, 0x7f1104c9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 128
    .local v10, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a04c5

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 129
    const v2, 0x7f0a04ba

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 128
    add-int/2addr v1, v2

    .line 130
    const v2, 0x7f0a04cb

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 128
    add-int v4, v1, v2

    .line 131
    .local v4, "divider_inset_size":I
    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 133
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mModeItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 140
    .local v9, "items":[Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;

    const v2, 0x7f040168

    invoke-direct {v1, p0, v2, v9}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->adapter:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040199

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mHeaderView:Landroid/view/View;

    .line 142
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mHeaderView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->adapter:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$RadioAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getDefaultRoutingDestination()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentRoute:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/CardEmulation;->supportsAutoRouting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    const-string/jumbo v2, "AUTO_SELECT"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemPosition(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 154
    const-string/jumbo v1, "AUTO_SELECT"

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;

    .line 160
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 93
    return-void

    .line 135
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v9    # "items":[Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 136
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 148
    .restart local v9    # "items":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 149
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NfcAdvancedRoutingSetting"

    const-string/jumbo v2, "Exception occured - getDefaultRoutingDestination"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentRoute:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemPosition(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentRoute:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 246
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v1, "NfcAdvancedRoutingSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemClick = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemKey(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AUTO_SELECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/CardEmulation;->enableAutoRouting()Z

    .line 206
    const-string/jumbo v1, "AUTO_SELECT"

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->ADVANCED_NFC_SETTINGS_BUTTON:I

    .line 208
    sget-object v1, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getMetricsCategory()I

    move-result v2

    sget v3, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->ADVANCED_NFC_SETTINGS_BUTTON:I

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->finish()V

    .line 200
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->showErrorDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NfcAdvancedRoutingSetting"

    const-string/jumbo v2, "Exception occurred - setDefaultRoutingDestination"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->finish()V

    .line 254
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 196
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 186
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method showErrorDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "Route"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->getGsimItemNo(Ljava/lang/String;)I

    move-result v1

    .line 290
    .local v1, "route_gsim_no":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 291
    const v3, 0x7f0b09c6

    .line 290
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 292
    const v3, 0x7f0b09c7

    .line 290
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 293
    new-instance v3, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$1;-><init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;I)V

    const v4, 0x7f0b1983

    .line 290
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 308
    new-instance v3, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$2;-><init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)V

    const/high16 v4, 0x1040000

    .line 290
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 315
    .local v0, "alert":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 316
    new-instance v2, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$3;-><init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 322
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 288
    return-void
.end method
