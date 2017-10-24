.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroid/preference/Preference;
.source "WifiP2pPeer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    }
.end annotation


# static fields
.field public static final deviceTypeDefaultIcon:[I

.field public static final deviceTypeOpionalIcon:[I

.field public static final sDeviceTypeImages:[I


# instance fields
.field private mContactDrawable:Landroid/graphics/drawable/Drawable;

.field public mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceType:I

.field private mIconIndex:I

.field private mSecondSummary:Landroid/widget/TextView;

.field private mTalkback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    .line 122
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    .line 134
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    .line 44
    return-void

    .line 81
    :array_0
    .array-data 4
        0x7f0205ed
        0x7f020600
        0x7f020603
        0x7f0205f2
        0x7f0205e1
        0x7f020601
        0x7f0205eb
        0x7f0205fa
        0x7f0205f6
        0x7f020602
        0x7f0205e7
        0x7f0205e8
        0x7f0205f8
        0x7f0205ff
        0x7f0205e2
        0x7f0205f1
        0x7f0205f5
        0x7f0205f7
        0x7f0205fb
        0x7f0205f4
        0x7f0205ec
        0x7f0205fd
        0x7f020601
        0x7f0205fa
        0x7f0205f9
        0x7f0205e6
        0x7f0205e5
    .end array-data

    .line 122
    :array_1
    .array-data 4
        0x7f0205f3
        0x7f0205ef
        0x7f0205e9
        0x7f0205ea
        0x7f0205fc
        0x7f0205e3
        0x7f0205e4
        0x7f0205ee
        0x7f0205eb
    .end array-data

    .line 134
    :array_2
    .array-data 4
        0x7f0205f2
        0x7f0205ea
        0x7f0205f4
        0x7f0205e6
        0x7f0205fe
        0x7f0205f0
        0x7f020601
        0x7f0205fc
        0x7f0205e9
        0x7f0205ed
        0x7f0205eb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 186
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 177
    iput-boolean v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    .line 182
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    .line 183
    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 187
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, "tokens":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 191
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    and-int/lit16 v0, v3, 0xff

    .line 193
    .local v0, "index":I
    const v3, 0x7f04036e

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setLayoutResource(I)V

    .line 195
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 196
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 199
    return-void

    .line 203
    :cond_0
    if-lt v2, v7, :cond_1

    const/16 v3, 0x1b

    if-gt v2, v3, :cond_1

    .line 204
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    .line 205
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    sparse-switch v3, :sswitch_data_0

    .line 185
    .end local v1    # "tokens":[Ljava/lang/String;
    :goto_0
    return-void

    .line 207
    .restart local v1    # "tokens":[Ljava/lang/String;
    :sswitch_0
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v3, v3, v6

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    .line 210
    :sswitch_1
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v3, v3, v7

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    .line 213
    :sswitch_2
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    .line 216
    :sswitch_3
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    .line 219
    :sswitch_4
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    .line 222
    :sswitch_5
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    .line 225
    :sswitch_6
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    .line 228
    :sswitch_7
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    .line 231
    :sswitch_8
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 239
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 242
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    array-length v3, v1

    if-ge v3, v7, :cond_4

    .line 243
    :cond_3
    const-string/jumbo v3, "WifiP2pPeer"

    const-string/jumbo v4, "Malformed primaryDeviceType"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto :goto_0

    .line 246
    :cond_4
    if-eqz v1, :cond_5

    .line 247
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    .line 248
    :cond_5
    iget v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    if-lt v3, v4, :cond_6

    iget v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    if-gt v3, v4, :cond_6

    .line 249
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    iget v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceType:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_0

    .line 251
    :cond_6
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v4

    aget v3, v3, v4

    iput v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    goto/16 :goto_0

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x401 -> :sswitch_0
        0x501 -> :sswitch_1
        0x502 -> :sswitch_2
        0x503 -> :sswitch_3
        0x701 -> :sswitch_4
        0x702 -> :sswitch_5
        0x704 -> :sswitch_6
        0x1502 -> :sswitch_7
        0x1601 -> :sswitch_8
    .end sparse-switch
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 308
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "statusArray":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 311
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 312
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 316
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    const v3, 0x3ebd70a4    # 0.37f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 317
    const v2, 0x7f0b0ce0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    .line 318
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    const v2, 0x7f0b0cdd

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSecondSummary(I)V

    .line 329
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 330
    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mIconIndex:I

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(I)V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0231

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 305
    :goto_1
    return-void

    .line 314
    :cond_2
    const v2, 0x7f0b0cdf

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(I)V

    goto :goto_0

    .line 320
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_4

    .line 321
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    const v2, 0x7f0b0cde

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSecondSummary(I)V

    goto :goto_0

    .line 326
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 335
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setSecondSummary(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 282
    instance-of v2, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-nez v2, :cond_0

    .line 283
    return v1

    .line 286
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    if-eqz v2, :cond_1

    .line 287
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    return v1

    :cond_1
    move-object v0, p1

    .line 290
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 293
    .local v0, "other":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_3

    .line 294
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 299
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 302
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDeviceName:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f11081a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSecondSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->refresh()V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 273
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 258
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTalkback(Z)V
    .locals 0
    .param p1, "talkback"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mTalkback:Z

    .line 276
    return-void
.end method
