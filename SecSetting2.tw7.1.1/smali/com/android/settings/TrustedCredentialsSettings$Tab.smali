.class final enum Lcom/android/settings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field private static final synthetic -com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

.field public static final enum SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mContentView:I

.field private final mExpandableList:I

.field private final mLabel:I

.field private final mPersonalList:I

.field private final mProgress:I

.field private final mSwitch:Z

.field private final mTag:Ljava/lang/String;

.field private final mTextView:I

.field private final mView:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mContentView:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mPersonalList:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTextView:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method private static synthetic -getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->values()[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1
    .param p1, "service"    # Landroid/security/IKeyChainService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 113
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string/jumbo v1, "SYSTEM"

    const-string/jumbo v3, "system"

    const/4 v2, 0x0

    .line 114
    const v4, 0x7f0b1b4b

    .line 115
    const v5, 0x7f11081b

    .line 116
    const v6, 0x7f11081c

    .line 117
    const v7, 0x7f11081f

    .line 119
    const v8, 0x7f110820

    .line 120
    const v9, 0x7f11081e

    .line 121
    const/4 v10, 0x1

    .line 122
    const v11, 0x7f11081d

    .line 113
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIIZI)V

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 118
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string/jumbo v1, "USER"

    .line 123
    const-string/jumbo v3, "user"

    .line 118
    const/4 v2, 0x1

    .line 124
    const v4, 0x7f0b1b4c

    .line 125
    const v5, 0x7f110821

    .line 126
    const v6, 0x7f110822

    .line 127
    const v7, 0x7f110825

    .line 129
    const v8, 0x7f110826

    .line 130
    const v9, 0x7f110824

    .line 131
    const/4 v10, 0x0

    .line 132
    const v11, 0x7f110823

    .line 118
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIIZI)V

    .line 123
    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIIZI)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "label"    # I
    .param p5, "view"    # I
    .param p6, "progress"    # I
    .param p7, "personalList"    # I
    .param p8, "expandableList"    # I
    .param p9, "contentView"    # I
    .param p10, "withSwitch"    # Z
    .param p11, "textView"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 148
    iput p4, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 149
    iput p5, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    .line 150
    iput p6, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 151
    iput p7, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mPersonalList:I

    .line 153
    iput p8, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    .line 154
    iput p9, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mContentView:I

    .line 155
    iput-boolean p10, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    .line 156
    iput p11, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTextView:I

    .line 146
    return-void
.end method

.method private deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 3
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-static {}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    :pswitch_1
    return v0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/ParcelableString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 162
    :pswitch_0
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 165
    :pswitch_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
