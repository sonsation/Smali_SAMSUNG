.class Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;
.super Landroid/app/AlertDialog;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final hexArray:[C


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mContinueButton:Landroid/widget/Button;

.field private mLabelView:Landroid/widget/TextView;

.field private mNetworkId:I

.field private mNfcTaggingImage:Landroid/widget/ImageView;

.field private mNfcTaggingImageForGrace:Landroid/widget/ImageView;

.field private mOnTextChangedHandler:Landroid/os/Handler;

.field private mPasswordCheckBox:Landroid/widget/CheckBox;

.field private mPasswordCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mPasswordErrorView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/EditText;

.field private mSecurity:I

.field private mSubmitButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsNfcConfigurationToken:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContinueButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNfcTaggingImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNfcTaggingImageForGrace:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->enableSubmitIfAppropriate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;Landroid/nfc/Tag;)V
    .locals 0
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->handleWriteNfcEvent(Landroid/nfc/Tag;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->readyToWriteWifiConfigToNfc()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-class v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    .line 97
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    .line 97
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkId"    # I
    .param p3, "security"    # I
    .param p4, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 121
    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    .line 122
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 123
    const-string/jumbo v1, "WriteWifiConfigToNfcDialog:wakeLock"

    const/4 v2, 0x1

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mOnTextChangedHandler:Landroid/os/Handler;

    .line 125
    iput p2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNetworkId:I

    .line 126
    iput p3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    .line 127
    iput-object p4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 118
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedState"    # Landroid/os/Bundle;
    .param p3, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 133
    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    .line 134
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 135
    const-string/jumbo v1, "WriteWifiConfigToNfcDialog:wakeLock"

    const/4 v2, 0x1

    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mOnTextChangedHandler:Landroid/os/Handler;

    .line 137
    const-string/jumbo v0, "network_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNetworkId:I

    .line 138
    const-string/jumbo v0, "security"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    .line 139
    iput-object p3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 130
    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 420
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 421
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 422
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 423
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 424
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private enableSubmitIfAppropriate()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 361
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    .line 362
    iget v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    if-ne v2, v0, :cond_2

    .line 363
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 359
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 363
    goto :goto_0

    .line 364
    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 365
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private getAccessPointString(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "wc"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 432
    :try_start_0
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 437
    .local v7, "ssid":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1a

    div-int/lit8 v9, v10, 0x2

    .line 438
    .local v9, "ssid_sub":I
    add-int/lit8 v10, v9, 0xd

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 440
    .local v8, "ssid_length":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "000"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "auth_type":Ljava/lang/String;
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 442
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "00"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_1
    :try_start_1
    const-string/jumbo v10, "UTF-8"

    invoke-virtual {p2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 452
    .local v2, "password":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x10

    div-int/lit8 v4, v10, 0x2

    .line 453
    .local v4, "pwd_sub":I
    add-int/lit8 v10, v4, 0x8

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "pwd_length":Ljava/lang/String;
    add-int/lit8 v10, v9, 0x38

    add-int/2addr v10, v4

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, "size":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "100E"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "1026000101"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "1045"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 458
    const-string/jumbo v11, "1003"

    .line 457
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 458
    const-string/jumbo v11, "0002"

    .line 457
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 458
    const-string/jumbo v11, "100F00020008"

    .line 457
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 458
    const-string/jumbo v11, "1027"

    .line 457
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 458
    const-string/jumbo v11, "102000060000000000001049000600372A000120"

    .line 457
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 433
    .end local v0    # "auth_type":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "pwd_length":Ljava/lang/String;
    .end local v4    # "pwd_sub":I
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "size":Ljava/lang/String;
    .end local v7    # "ssid":Ljava/lang/String;
    .end local v8    # "ssid_length":Ljava/lang/String;
    .end local v9    # "ssid_sub":I
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 435
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->utf8ToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "ssid":Ljava/lang/String;
    goto/16 :goto_0

    .line 448
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "auth_type":Ljava/lang/String;
    .restart local v8    # "ssid_length":Ljava/lang/String;
    .restart local v9    # "ssid_sub":I
    :catch_1
    move-exception v1

    .line 449
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 450
    invoke-static {p2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->utf8ToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "password":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private getHexString(I)Ljava/lang/String;
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "str":Ljava/lang/String;
    const/16 v2, 0xf

    if-gt p1, v2, :cond_0

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 474
    .local v0, "result":Ljava/lang/String;
    :cond_0
    const/16 v2, 0xff

    if-gt p1, v2, :cond_1

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 476
    .local v0, "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0xfff

    if-gt p1, v2, :cond_2

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 479
    .local v0, "result":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .local v0, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private handleWriteNfcEvent(Landroid/nfc/Tag;)V
    .locals 7
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const v5, 0x7f0b1a35

    const v6, 0x7f0b1a34

    .line 268
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 270
    .local v2, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    const-string/jumbo v4, "application/vnd.wfa.wsc"

    .line 274
    iget-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWpsNfcConfigurationToken:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 272
    invoke-static {v4, v5}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 276
    .local v3, "record":Landroid/nfc/NdefRecord;
    :try_start_0
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 277
    new-instance v4, Landroid/nfc/NdefMessage;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v4, v3, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    invoke-virtual {v2, v4}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 296
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v5, 0x7f0b1a33

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 297
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mCancelButton:Landroid/widget/Button;

    const v5, 0x10405ac

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :goto_0
    return-void

    .line 302
    .restart local v3    # "record":Landroid/nfc/NdefRecord;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/nfc/FormatException;
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v6}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 304
    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    return-void

    .line 298
    .end local v0    # "e":Landroid/nfc/FormatException;
    :catch_1
    move-exception v1

    .line 299
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v6}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 300
    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    return-void

    .line 308
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 309
    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Tag is not writable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 313
    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Tag does not support NDEF"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 409
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 411
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 412
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 413
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 412
    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 411
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 416
    :cond_0
    return-object v0
.end method

.method private readyToWriteWifiConfigToNfc()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 228
    .local v2, "nfcAdapter":Landroid/nfc/NfcAdapter;
    new-instance v3, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$2;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    .line 233
    const/16 v4, 0x1f

    .line 238
    const/4 v5, 0x0

    .line 228
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 240
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 242
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 243
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 248
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 250
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v4, 0x7f0b1a31

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v4, 0x7f1107e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTextAlignment(I)V

    .line 253
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNfcTaggingImageForGrace:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mCancelButton:Landroid/widget/Button;

    const/high16 v4, 0x1040000

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 259
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    return-void

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNfcTaggingImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 464
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 465
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 466
    :cond_0
    return-object p1
.end method

.method private setViewText(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "resid"    # I

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$5;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method private static utf8ToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 398
    const-string/jumbo v3, ""

    .line 399
    .local v3, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 400
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 401
    .local v0, "ch":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "data":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "ch":I
    .end local v1    # "data":Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 487
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 484
    return-void
.end method

.method public dismiss()V
    .locals 6

    .prologue
    .line 319
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 324
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 326
    .local v2, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v2, :cond_1

    .line 327
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 318
    return-void

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f11077c

    if-ne v1, v2, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 386
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    .line 388
    if-eqz p2, :cond_1

    .line 389
    const/16 v1, 0x90

    .line 387
    :goto_0
    or-int/lit8 v1, v1, 0x1

    .line 386
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 391
    if-ltz v0, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 383
    .end local v0    # "pos":I
    :cond_0
    return-void

    .line 390
    .restart local v0    # "pos":I
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x10

    .line 196
    iget-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 198
    iget-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "password":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNetworkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "wpsNfcConfigurationToken":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "passwordHex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "passwordLength":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "102700%s%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    iget-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNetworkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 211
    .local v3, "wc":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v5, "gbk"

    sget-object v6, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 212
    invoke-direct {p0, v3, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getAccessPointString(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWpsNfcConfigurationToken:Ljava/lang/String;

    .line 216
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->readyToWriteWifiConfigToNfc()V

    .line 195
    .end local v3    # "wc":Landroid/net/wifi/WifiConfiguration;
    :goto_2
    return-void

    .line 205
    .end local v2    # "passwordLength":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "passwordLength":Ljava/lang/String;
    goto :goto_0

    .line 214
    .restart local v3    # "wc":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iput-object v4, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWpsNfcConfigurationToken:Ljava/lang/String;

    goto :goto_1

    .line 218
    .end local v3    # "wc":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    const v6, 0x7f0b0cdf

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d022a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 220
    iget-object v5, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04038d

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setView(Landroid/view/View;)V

    .line 147
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setInverseBackgroundForced(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b1a2f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setCancelable(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 150
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b1a30

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    .line 154
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 152
    invoke-virtual {p0, v4, v2, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b1a30

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    .line 156
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f11072a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f110878

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f110879

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 166
    const/4 v1, 0x5

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f11077c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f1107e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBoxLayout:Landroid/widget/LinearLayout;

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBoxLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f11087a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNfcTaggingImage:Landroid/widget/ImageView;

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f110877

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNfcTaggingImageForGrace:Landroid/widget/ImageView;

    .line 182
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContinueButton:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContinueButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mCancelButton:Landroid/widget/Button;

    .line 143
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v3, 0x3f

    const/4 v5, 0x0

    .line 338
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 341
    .local v0, "length":I
    if-le v0, v3, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    const v3, 0x7f0b0d19

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d022a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 345
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 351
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mOnTextChangedHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$4;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordErrorView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d011e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 263
    const-string/jumbo v0, "network_id"

    iget v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const-string/jumbo v0, "security"

    iget v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    return-void
.end method
