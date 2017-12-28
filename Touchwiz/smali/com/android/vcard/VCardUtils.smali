.class public Lcom/android/vcard/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardUtils$DecoderException;,
        Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;,
        Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;,
        Lcom/android/vcard/VCardUtils$TextUtilsPort;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final sEscapeIndicatorsV30:[I

.field private static final sEscapeIndicatorsV40:[I

.field private static final sKnownImPropNameMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypeMap_StoI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypesMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMobilePhoneLabelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneTypesUnknownToContactsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 132
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CAR"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PAGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "PAGER"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ISDN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "ISDN"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "HOME"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "WORK"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CELL"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CALLBACK"

    .line 145
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 144
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 147
    const-string v1, "COMPANY-MAIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 146
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "RADIO"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "TTY-TDD"

    .line 150
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "ASSISTANT"

    .line 152
    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 151
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "VOICE"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    .line 157
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "MODEM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "MSG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "BBS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "VIDEO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    .line 163
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 168
    const-string v2, "X-GOOGLE-TALK"

    .line 167
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-NETMEETING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-WHATSAPP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-FACEBOOK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 181
    const-string v3, "MOBILE"

    aput-object v3, v1, v2

    const-string v2, "\u643a\u5e2f\u96fb\u8a71"

    aput-object v2, v1, v5

    const-string v2, "\u643a\u5e2f"

    aput-object v2, v1, v4

    const-string v2, "\u30b1\u30a4\u30bf\u30a4"

    aput-object v2, v1, v6

    .line 182
    const-string v2, "\uff79\uff72\uff80\uff72"

    aput-object v2, v1, v7

    .line 180
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    .line 864
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Character;

    const/4 v2, 0x0

    const/16 v3, 0x5b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 863
    sput-object v0, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    .line 965
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    .line 969
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    .line 971
    return-void

    .line 965
    nop

    :array_0
    .array-data 4
        0x3a
        0x3b
        0x2c
        0x20
    .end array-data

    .line 969
    :array_1
    .array-data 4
        0x3b
        0x3a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1276
    return-void
.end method

.method public static appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v1, v4, 0x3

    .line 1114
    .local v1, "remainder":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    if-eq v1, v3, :cond_1

    if-eqz v1, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return v2

    .line 1117
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_2

    move v2, v3

    .line 1122
    goto :goto_0

    .line 1118
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_0

    .line 1117
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method public static varargs areAllEmpty([Ljava/lang/String;)Z
    .locals 6
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1089
    if-nez p0, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return v1

    .line 1093
    :cond_1
    array-length v4, p0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 1094
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v2

    .line 1095
    goto :goto_0

    .line 1093
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static constructListFromIMValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "vcardType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x6

    .line 737
    const/4 v7, 0x0

    .line 738
    .local v7, "sequenceCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 741
    .local v4, "length":I
    const/16 v8, 0x4e

    .line 742
    .local v8, "state":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, "customValue":Ljava/lang/String;
    if-lt v7, v12, :cond_b

    .line 798
    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x9

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    :goto_1
    return-object v5

    .line 743
    .end local v2    # "customValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 745
    .local v1, "ch":C
    sparse-switch v8, :sswitch_data_0

    .line 766
    :cond_1
    :goto_2
    const/16 v10, 0x5c

    if-ne v1, v10, :cond_8

    add-int/lit8 v10, v4, -0x1

    if-ge v3, v10, :cond_8

    .line 767
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 769
    .local v6, "nextCh":C
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 770
    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v9

    .line 781
    .local v9, "unescapedString":Ljava/lang/String;
    :goto_3
    if-eqz v9, :cond_2

    const/16 v10, 0x53

    if-eq v8, v10, :cond_2

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    .end local v6    # "nextCh":C
    .end local v9    # "unescapedString":Ljava/lang/String;
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 747
    :sswitch_0
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInFirstAreaJIS(C)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 748
    const/16 v8, 0x46

    .line 749
    goto :goto_2

    .line 751
    :sswitch_1
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInSecondAreaJIS(C)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 752
    const/16 v8, 0x53

    goto :goto_2

    .line 754
    :cond_3
    const/16 v8, 0x4e

    .line 755
    goto :goto_2

    .line 757
    :sswitch_2
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInFirstAreaJIS(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 758
    const/16 v8, 0x46

    goto :goto_2

    .line 760
    :cond_4
    const/16 v8, 0x4e

    goto :goto_2

    .line 771
    .restart local v6    # "nextCh":C
    :cond_5
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 772
    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v9

    .line 773
    .restart local v9    # "unescapedString":Ljava/lang/String;
    goto :goto_3

    .line 774
    .end local v9    # "unescapedString":Ljava/lang/String;
    :cond_6
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 776
    const-string v10, "vCard"

    const-string v11, "Unknown vCard type"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_7
    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "unescapedString":Ljava/lang/String;
    goto :goto_3

    .line 784
    .end local v6    # "nextCh":C
    .end local v9    # "unescapedString":Ljava/lang/String;
    :cond_8
    const/16 v10, 0x3b

    if-ne v1, v10, :cond_a

    .line 785
    if-ge v7, v12, :cond_9

    .line 786
    add-int/lit8 v7, v7, 0x1

    .line 787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_4

    .line 791
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 793
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 800
    .end local v1    # "ch":C
    .restart local v2    # "customValue":Ljava/lang/String;
    :cond_b
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 745
    nop

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_1
        0x4e -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method public static constructListFromRawValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 24
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "rawValue"    # Ljava/lang/String;
    .param p2, "vcardType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 540
    .local v10, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    .line 541
    .local v16, "raw_length":I
    const/4 v5, 0x0

    .line 542
    .local v5, "cnt":I
    const/4 v6, 0x0

    .line 543
    .local v6, "count":I
    move/from16 v7, v16

    .local v7, "i":I
    :goto_0
    if-gtz v7, :cond_1

    .line 551
    :cond_0
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    sub-int v22, v16, v5

    move/from16 v0, v22

    if-lt v9, v0, :cond_2

    .line 558
    const/4 v7, 0x0

    :goto_2
    if-lt v7, v10, :cond_4

    .line 588
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    const-string v22, "vnd.android.cursor.item/relation"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 590
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v6, v0, :cond_b

    .line 591
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v12, "list2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v22, 0x0

    sub-int v23, v10, v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 593
    .local v19, "tmp_V":Ljava/lang/String;
    const-string v22, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    const-string v23, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 594
    .local v15, "param_value":Ljava/lang/String;
    const-string v22, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 596
    .local v20, "type_value":Ljava/lang/String;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v12    # "list2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "param_value":Ljava/lang/String;
    .end local v19    # "tmp_V":Ljava/lang/String;
    .end local v20    # "type_value":Ljava/lang/String;
    :goto_3
    return-object v12

    .line 544
    .end local v9    # "j":I
    :cond_1
    add-int/lit8 v22, v7, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 545
    .local v4, "ch":C
    const/16 v22, 0x3b

    move/from16 v0, v22

    if-ne v4, v0, :cond_0

    .line 546
    add-int/lit8 v5, v5, 0x1

    .line 543
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 552
    .end local v4    # "ch":C
    .restart local v9    # "j":I
    :cond_2
    const/16 v22, 0x0

    sub-int v23, v16, v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 553
    .local v17, "rch":C
    const/16 v22, 0x3b

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 554
    add-int/lit8 v6, v6, 0x1

    .line 551
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 559
    .end local v17    # "rch":C
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 560
    .restart local v4    # "ch":C
    const/16 v22, 0x5c

    move/from16 v0, v22

    if-ne v4, v0, :cond_9

    add-int/lit8 v22, v10, -0x1

    move/from16 v0, v22

    if-ge v7, v0, :cond_9

    .line 561
    add-int/lit8 v22, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 563
    .local v14, "nextCh":C
    invoke-static/range {p2 .. p2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 564
    invoke-static {v14}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v21

    .line 575
    .local v21, "unescapedString":Ljava/lang/String;
    :goto_4
    if-eqz v21, :cond_8

    .line 576
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    add-int/lit8 v7, v7, 0x1

    .line 558
    .end local v14    # "nextCh":C
    .end local v21    # "unescapedString":Ljava/lang/String;
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 565
    .restart local v14    # "nextCh":C
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 566
    invoke-static {v14}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v21

    .line 567
    .restart local v21    # "unescapedString":Ljava/lang/String;
    goto :goto_4

    .line 568
    .end local v21    # "unescapedString":Ljava/lang/String;
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v22

    if-nez v22, :cond_7

    .line 570
    const-string v22, "vCard"

    const-string v23, "Unknown vCard type"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_7
    invoke-static {v14}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "unescapedString":Ljava/lang/String;
    goto :goto_4

    .line 579
    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 581
    .end local v14    # "nextCh":C
    .end local v21    # "unescapedString":Ljava/lang/String;
    :cond_9
    const/16 v22, 0x3b

    move/from16 v0, v22

    if-ne v4, v0, :cond_a

    .line 582
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    goto :goto_5

    .line 585
    :cond_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 600
    .end local v4    # "ch":C
    :cond_b
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v6, v0, :cond_13

    .line 601
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v13, "list3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .local v18, "rel_builder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 604
    .local v8, "idx":I
    const/4 v8, 0x2

    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v8, v0, :cond_d

    .line 610
    :cond_c
    const/4 v7, 0x0

    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v7, v0, :cond_f

    .line 627
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v12, v13

    .line 628
    goto/16 :goto_3

    .line 605
    :cond_d
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 604
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 611
    :cond_f
    if-nez v7, :cond_10

    .line 612
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 614
    :cond_10
    if-ge v7, v8, :cond_11

    .line 615
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 617
    :cond_11
    if-ne v7, v8, :cond_12

    .line 618
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v18, Ljava/lang/StringBuilder;

    .end local v18    # "rel_builder":Ljava/lang/StringBuilder;
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .restart local v18    # "rel_builder":Ljava/lang/StringBuilder;
    goto :goto_8

    .line 622
    :cond_12
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .end local v8    # "idx":I
    .end local v13    # "list3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "rel_builder":Ljava/lang/StringBuilder;
    :cond_13
    move-object v12, v11

    .line 631
    goto/16 :goto_3
.end method

.method public static constructListFromShiftJisValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "vcardType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 670
    .local v3, "length":I
    const/16 v6, 0x4e

    .line 671
    .local v6, "state":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 724
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    return-object v4

    .line 672
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 674
    .local v1, "ch":C
    sparse-switch v6, :sswitch_data_0

    .line 696
    :cond_1
    :goto_1
    const/16 v8, 0x5c

    if-ne v1, v8, :cond_8

    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_8

    .line 697
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 699
    .local v5, "nextCh":C
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 700
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v7

    .line 711
    .local v7, "unescapedString":Ljava/lang/String;
    :goto_2
    if-eqz v7, :cond_7

    const/16 v8, 0x53

    if-eq v6, v8, :cond_7

    .line 712
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    add-int/lit8 v2, v2, 0x1

    .line 671
    .end local v5    # "nextCh":C
    .end local v7    # "unescapedString":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    :sswitch_0
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInFirstAreaJIS(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 677
    const/16 v6, 0x46

    .line 678
    goto :goto_1

    .line 680
    :sswitch_1
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInSecondAreaJIS(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 681
    const/16 v6, 0x53

    goto :goto_1

    .line 683
    :cond_2
    const/16 v6, 0x4e

    .line 684
    goto :goto_1

    .line 686
    :sswitch_2
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInFirstAreaJIS(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 687
    const/16 v6, 0x46

    goto :goto_1

    .line 689
    :cond_3
    const/16 v6, 0x4e

    goto :goto_1

    .line 701
    .restart local v5    # "nextCh":C
    :cond_4
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 702
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v7

    .line 703
    .restart local v7    # "unescapedString":Ljava/lang/String;
    goto :goto_2

    .line 704
    .end local v7    # "unescapedString":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 706
    const-string v8, "vCard"

    const-string v9, "Unknown vCard type"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_6
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "unescapedString":Ljava/lang/String;
    goto :goto_2

    .line 715
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 717
    .end local v5    # "nextCh":C
    .end local v7    # "unescapedString":Ljava/lang/String;
    :cond_8
    const/16 v8, 0x3b

    if-ne v1, v8, :cond_9

    .line 718
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 721
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 674
    nop

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_1
        0x4e -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method public static constructListFromValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "vcardType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 500
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    return-object v4

    .line 501
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 502
    .local v1, "ch":C
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_5

    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_5

    .line 503
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 505
    .local v5, "nextCh":C
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 506
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .line 517
    .local v6, "unescapedString":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_4

    .line 518
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    add-int/lit8 v2, v2, 0x1

    .line 500
    .end local v5    # "nextCh":C
    .end local v6    # "unescapedString":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    .restart local v5    # "nextCh":C
    :cond_1
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 508
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .line 509
    .restart local v6    # "unescapedString":Ljava/lang/String;
    goto :goto_1

    .line 510
    .end local v6    # "unescapedString":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 512
    const-string v7, "vCard"

    const-string v8, "Unknown vCard type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_3
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "unescapedString":Ljava/lang/String;
    goto :goto_1

    .line 521
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 523
    .end local v5    # "nextCh":C
    .end local v6    # "unescapedString":Ljava/lang/String;
    :cond_5
    const/16 v7, 0x3b

    if-ne v1, v7, :cond_6

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 527
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 457
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x20

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, p2, p3}, Lcom/android/vcard/VCardUtils;->sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "nameList":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 467
    .local v1, "first":Z
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 468
    const/4 v1, 0x0

    .line 469
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_0
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_3

    .line 481
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 482
    if-nez v1, :cond_1

    .line 483
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    :cond_1
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 471
    :cond_3
    aget-object v3, v2, v4

    .line 472
    .local v3, "namePart":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 473
    if-eqz v1, :cond_5

    .line 474
    const/4 v1, 0x0

    .line 478
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 476
    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 886
    if-nez p0, :cond_1

    .line 911
    :cond_0
    :goto_0
    return v11

    .line 889
    :cond_1
    const/16 v10, 0x41

    .line 890
    .local v10, "upperAlphabetFirst":I
    const/16 v9, 0x5b

    .line 891
    .local v9, "upperAlphabetAfterLast":I
    const/16 v7, 0x61

    .line 892
    .local v7, "lowerAlphabetFirst":I
    const/16 v6, 0x7b

    .line 893
    .local v6, "lowerAlphabetAfterLast":I
    const/16 v2, 0x30

    .line 894
    .local v2, "digitFirst":I
    const/16 v1, 0x3a

    .line 895
    .local v1, "digitAfterLast":I
    const/16 v3, 0x2d

    .line 896
    .local v3, "hyphen":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 897
    .local v8, "str":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 900
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .line 901
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 902
    invoke-virtual {v8, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 903
    .local v0, "codepoint":I
    const/16 v13, 0x61

    if-gt v13, v0, :cond_3

    const/16 v13, 0x7b

    if-lt v0, v13, :cond_6

    .line 904
    :cond_3
    const/16 v13, 0x41

    if-gt v13, v0, :cond_4

    const/16 v13, 0x5b

    if-lt v0, v13, :cond_6

    .line 905
    :cond_4
    const/16 v13, 0x30

    if-gt v13, v0, :cond_5

    const/16 v13, 0x3a

    if-lt v0, v13, :cond_6

    .line 906
    :cond_5
    const/16 v13, 0x2d

    if-eq v0, v13, :cond_6

    .line 907
    const/4 v11, 0x0

    goto :goto_0

    .line 901
    :cond_6
    invoke-virtual {v8, v4, v11}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_1
.end method

.method public static varargs containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 879
    if-nez p0, :cond_0

    .line 880
    const/4 v0, 0x1

    .line 882
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 843
    if-nez p0, :cond_1

    .line 860
    :cond_0
    :goto_0
    return v6

    .line 846
    :cond_1
    const/16 v0, 0x20

    .line 847
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 848
    .local v1, "asciiLast":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 849
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 852
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 853
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 854
    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 855
    .local v2, "c":I
    const/16 v8, 0x20

    if-gt v8, v2, :cond_3

    const/16 v8, 0x7e

    if-le v2, v8, :cond_4

    .line 856
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 853
    :cond_4
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1
.end method

.method public static varargs containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 836
    if-nez p0, :cond_0

    .line 837
    const/4 v0, 0x1

    .line 839
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnlyPrintableAscii(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 812
    if-nez p0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return v1

    .line 815
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 816
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 819
    invoke-static {v0}, Lcom/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 820
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs containsOnlyPrintableAscii([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 805
    if-nez p0, :cond_0

    .line 806
    const/4 v0, 0x1

    .line 808
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static containsOnlyWhiteSpaces(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 922
    if-nez p0, :cond_1

    .line 936
    :cond_0
    :goto_0
    return v3

    .line 925
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 926
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 929
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 930
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 931
    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 932
    const/4 v3, 0x0

    goto :goto_0

    .line 930
    :cond_3
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_1
.end method

.method public static varargs containsOnlyWhiteSpaces([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 915
    if-nez p0, :cond_0

    .line 916
    const/4 v0, 0x1

    .line 918
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyWhiteSpaces(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "originalString"    # Ljava/lang/String;
    .param p1, "sourceCharset"    # Ljava/lang/String;
    .param p2, "targetCharset"    # Ljava/lang/String;

    .prologue
    .line 1252
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1269
    .end local p0    # "originalString":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1255
    .restart local p0    # "originalString":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 1256
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1259
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 1260
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1263
    :try_start_0
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SHIFT_JIS"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1264
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v4}, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1266
    :cond_1
    new-instance p0, Ljava/lang/String;

    .end local p0    # "originalString":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1267
    :catch_0
    move-exception v3

    .line 1268
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "vCard"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to encode: charset="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static final getAppropriateParser(I)Lcom/android/vcard/VCardParser;
    .locals 2
    .param p0, "vcardType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    new-instance v0, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 1244
    :goto_0
    return-object v0

    .line 1241
    :cond_0
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    new-instance v0, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    goto :goto_0

    .line 1243
    :cond_1
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1244
    new-instance v0, Lcom/android/vcard/VCardParser_V40;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V40;-><init>()V

    goto :goto_0

    .line 1246
    :cond_2
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    const-string v1, "Version is not specified"

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLine([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "split"    # [Ljava/lang/String;

    .prologue
    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1280
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 1283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1280
    :cond_0
    aget-object v1, p0, v2

    .line 1281
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getPhoneNumberFormat(I)I
    .locals 1
    .param p0, "vcardType"    # I

    .prologue
    .line 448
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x2

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 25
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 196
    const-string p1, ""

    .line 198
    :cond_0
    const/16 v18, -0x1

    .line 199
    .local v18, "type":I
    const/4 v15, 0x0

    .line 200
    .local v15, "label":Ljava/lang/String;
    const/4 v8, 0x0

    .line 201
    .local v8, "isFax":Z
    const/4 v6, 0x0

    .line 202
    .local v6, "isCell":Z
    const/4 v2, 0x0

    .line 203
    .local v2, "hasPref":Z
    const/4 v5, 0x0

    .line 204
    .local v5, "isCar":Z
    const/4 v4, 0x0

    .line 205
    .local v4, "isAssist":Z
    const/4 v11, 0x0

    .line 206
    .local v11, "isRadio":Z
    const/4 v14, 0x0

    .line 207
    .local v14, "isWork":Z
    const/4 v7, 0x0

    .line 208
    .local v7, "isCompanyMain":Z
    const/4 v13, 0x0

    .line 209
    .local v13, "isTelex":Z
    const/4 v12, 0x0

    .line 210
    .local v12, "isTTY_TDD":Z
    const/4 v9, 0x0

    .line 211
    .local v9, "isMMS":Z
    const/4 v10, 0x0

    .line 213
    .local v10, "isOtherFax":Z
    if-eqz p0, :cond_2

    .line 214
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_10

    .line 325
    :cond_2
    if-gez v18, :cond_3

    .line 326
    if-eqz v2, :cond_29

    .line 327
    const/16 v18, 0xc

    .line 333
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 334
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_2a

    .line 335
    const/16 v18, 0x5

    .line 345
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 346
    const/16 v18, 0x2

    .line 348
    :cond_5
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 350
    if-eqz v10, :cond_6

    .line 351
    const/16 v18, 0xd

    .line 354
    :cond_6
    if-eqz v5, :cond_7

    .line 355
    const/16 v18, 0x9

    .line 357
    :cond_7
    if-eqz v4, :cond_8

    .line 358
    const/16 v18, 0x13

    .line 360
    :cond_8
    if-eqz v11, :cond_9

    .line 361
    const/16 v18, 0xe

    .line 363
    :cond_9
    if-eqz v14, :cond_a

    .line 364
    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_2c

    .line 365
    const/16 v18, 0x11

    .line 373
    :cond_a
    :goto_3
    if-eqz v7, :cond_b

    .line 374
    const/16 v18, 0xa

    .line 376
    :cond_b
    if-eqz v13, :cond_c

    .line 377
    const/16 v18, 0xf

    .line 379
    :cond_c
    if-eqz v12, :cond_d

    .line 380
    const/16 v18, 0x10

    .line 382
    :cond_d
    if-eqz v9, :cond_e

    .line 383
    const/16 v18, 0x14

    .line 385
    :cond_e
    if-eqz v4, :cond_f

    .line 386
    const/16 v18, 0x13

    .line 390
    :cond_f
    if-nez v18, :cond_2f

    .line 393
    .end local v15    # "label":Ljava/lang/String;
    :goto_4
    return-object v15

    .line 214
    .restart local v15    # "label":Ljava/lang/String;
    :cond_10
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 215
    .local v20, "typeStringOrg":Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 218
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    .line 219
    .local v21, "typeStringUpperCase":Ljava/lang/String;
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v23

    if-eqz v23, :cond_21

    .line 220
    const-string v23, "PREF"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 221
    const/4 v2, 0x1

    .line 222
    goto :goto_0

    :cond_11
    const-string v23, "FAX"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 223
    const/4 v8, 0x1

    .line 224
    goto/16 :goto_0

    :cond_12
    const-string v23, "CELL"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 225
    const/4 v6, 0x1

    .line 226
    goto/16 :goto_0

    :cond_13
    const-string v23, "CAR"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 227
    const/4 v5, 0x1

    .line 228
    goto/16 :goto_0

    :cond_14
    const-string v23, "RADIO"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 229
    const/4 v11, 0x1

    .line 230
    goto/16 :goto_0

    :cond_15
    const-string v23, "ASSISTANT"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 231
    const/4 v4, 0x1

    .line 232
    goto/16 :goto_0

    :cond_16
    const-string v23, "WORK"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 233
    const/4 v14, 0x1

    .line 234
    goto/16 :goto_0

    :cond_17
    const-string v23, "COMPANY-MAIN"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 235
    const/4 v7, 0x1

    .line 236
    goto/16 :goto_0

    :cond_18
    const-string v23, "TLX"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 237
    const/4 v13, 0x1

    .line 238
    goto/16 :goto_0

    :cond_19
    const-string v23, "TTY-TDD"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 239
    const/4 v12, 0x1

    .line 240
    goto/16 :goto_0

    :cond_1a
    const-string v23, "MSG"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 241
    const/4 v9, 0x1

    .line 242
    goto/16 :goto_0

    :cond_1b
    const-string v23, "OTHER-FAX"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 243
    const/4 v10, 0x1

    .line 244
    goto/16 :goto_0

    .line 246
    :cond_1c
    const-string v23, "X-"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1f

    if-gez v18, :cond_1f

    .line 247
    const/16 v23, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 251
    .local v16, "labelCandidate":Ljava/lang/String;
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1

    .line 255
    sget-object v23, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 256
    .local v17, "tmp":Ljava/lang/Integer;
    if-eqz v17, :cond_20

    .line 257
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 264
    .local v19, "typeCandidate":I
    const-string v23, "@"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 265
    .local v3, "indexOfAt":I
    const/16 v23, 0x6

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 266
    if-lez v3, :cond_1d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-lt v3, v0, :cond_1e

    .line 267
    :cond_1d
    if-ltz v18, :cond_1e

    .line 268
    if-nez v18, :cond_1

    .line 269
    :cond_1e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 271
    goto/16 :goto_0

    .line 249
    .end local v3    # "indexOfAt":I
    .end local v16    # "labelCandidate":Ljava/lang/String;
    .end local v17    # "tmp":Ljava/lang/Integer;
    .end local v19    # "typeCandidate":I
    :cond_1f
    move-object/from16 v16, v20

    .restart local v16    # "labelCandidate":Ljava/lang/String;
    goto :goto_5

    .line 271
    .restart local v17    # "tmp":Ljava/lang/Integer;
    :cond_20
    if-gez v18, :cond_1

    .line 272
    const/16 v18, 0x0

    .line 273
    move-object/from16 v15, v16

    .line 276
    goto/16 :goto_0

    .line 277
    .end local v16    # "labelCandidate":Ljava/lang/String;
    .end local v17    # "tmp":Ljava/lang/Integer;
    :cond_21
    const-string v23, "PREF"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    .line 278
    const/4 v2, 0x1

    .line 279
    goto/16 :goto_0

    :cond_22
    const-string v23, "FAX"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_23

    .line 280
    const/4 v8, 0x1

    .line 281
    goto/16 :goto_0

    :cond_23
    const-string v23, "CELL"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_24

    .line 282
    const/4 v6, 0x1

    .line 283
    goto/16 :goto_0

    .line 285
    :cond_24
    const-string v23, "X-"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_27

    if-gez v18, :cond_27

    .line 286
    const/16 v23, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 290
    .restart local v16    # "labelCandidate":Ljava/lang/String;
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1

    .line 294
    sget-object v23, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 295
    .restart local v17    # "tmp":Ljava/lang/Integer;
    if-eqz v17, :cond_28

    .line 296
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 309
    .restart local v19    # "typeCandidate":I
    const-string v23, "@"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 310
    .restart local v3    # "indexOfAt":I
    const/16 v23, 0x6

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_25

    .line 311
    if-lez v3, :cond_25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-lt v3, v0, :cond_26

    .line 312
    :cond_25
    if-ltz v18, :cond_26

    .line 313
    if-eqz v18, :cond_26

    .line 314
    const/16 v23, 0x7

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 315
    :cond_26
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 317
    goto/16 :goto_0

    .line 288
    .end local v3    # "indexOfAt":I
    .end local v16    # "labelCandidate":Ljava/lang/String;
    .end local v17    # "tmp":Ljava/lang/Integer;
    .end local v19    # "typeCandidate":I
    :cond_27
    move-object/from16 v16, v20

    .restart local v16    # "labelCandidate":Ljava/lang/String;
    goto :goto_6

    .line 317
    .restart local v17    # "tmp":Ljava/lang/Integer;
    :cond_28
    if-gez v18, :cond_1

    .line 318
    const/16 v18, 0x0

    .line 319
    move-object/from16 v15, v16

    goto/16 :goto_0

    .line 330
    .end local v16    # "labelCandidate":Ljava/lang/String;
    .end local v17    # "tmp":Ljava/lang/Integer;
    .end local v20    # "typeStringOrg":Ljava/lang/String;
    .end local v21    # "typeStringUpperCase":Ljava/lang/String;
    :cond_29
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 336
    :cond_2a
    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_2b

    .line 337
    const/16 v18, 0x4

    .line 338
    goto/16 :goto_2

    :cond_2b
    const/16 v22, 0x7

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 339
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v22

    if-nez v22, :cond_4

    .line 340
    const/16 v18, 0xd

    goto/16 :goto_2

    .line 366
    :cond_2c
    const/16 v22, 0x6

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_2d

    .line 367
    const/16 v18, 0x12

    .line 368
    goto/16 :goto_3

    :cond_2d
    if-eqz v8, :cond_2e

    .line 369
    const/16 v18, 0x4

    goto/16 :goto_3

    .line 371
    :cond_2e
    const/16 v18, 0x3

    goto/16 :goto_3

    .line 393
    :cond_2f
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto/16 :goto_4
.end method

.method public static getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 186
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPropertyNameForIm(I)Ljava/lang/String;
    .locals 2
    .param p0, "protocol"    # I

    .prologue
    .line 410
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static guessImageType([B)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # [B

    .prologue
    const/16 v6, 0x47

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1066
    if-nez p0, :cond_0

    .line 1067
    const/4 v0, 0x0

    .line 1081
    :goto_0
    return-object v0

    .line 1069
    :cond_0
    array-length v0, p0

    if-lt v0, v5, :cond_1

    aget-byte v0, p0, v2

    if-ne v0, v6, :cond_1

    aget-byte v0, p0, v3

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v4

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    .line 1070
    const-string v0, "GIF"

    goto :goto_0

    .line 1071
    :cond_1
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    aget-byte v0, p0, v2

    const/16 v1, -0x77

    if-ne v0, v1, :cond_2

    .line 1072
    aget-byte v0, p0, v3

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v5

    if-ne v0, v6, :cond_2

    .line 1076
    const-string v0, "PNG"

    goto :goto_0

    .line 1077
    :cond_2
    array-length v0, p0

    if-lt v0, v4, :cond_3

    aget-byte v0, p0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1078
    aget-byte v0, p0, v3

    const/16 v1, -0x28

    if-ne v0, v1, :cond_3

    .line 1079
    const-string v0, "JPEG"

    goto :goto_0

    .line 1081
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCheckCharInFirstAreaJIS(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 641
    const/16 v0, 0x81

    if-gt v0, p0, :cond_0

    const/16 v0, 0x9f

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xe0

    if-gt v0, p0, :cond_2

    const/16 v0, 0xef

    if-gt p0, v0, :cond_2

    .line 642
    :cond_1
    const/4 v0, 0x1

    .line 643
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCheckCharInSecondAreaJIS(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 653
    const/16 v0, 0x40

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-gt v0, p0, :cond_2

    const/16 v0, 0xfc

    if-gt p0, v0, :cond_2

    .line 654
    :cond_1
    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobilePhoneLabel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 402
    const-string v0, "_AUTO_CELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isV21Word(Ljava/lang/String;)Z
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 949
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 962
    :cond_0
    :goto_0
    return v5

    .line 952
    :cond_1
    const/16 v0, 0x20

    .line 953
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 954
    .local v1, "asciiLast":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 955
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 956
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 957
    .local v2, "c":I
    const/16 v6, 0x20

    if-gt v6, v2, :cond_2

    const/16 v6, 0x7e

    if-gt v2, v6, :cond_2

    .line 958
    sget-object v6, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    int-to-char v7, v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 959
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 955
    :cond_3
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1
.end method

.method public static isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 406
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "strictLineBreaking"    # Z
    .param p2, "sourceCharset"    # Ljava/lang/String;
    .param p3, "targetCharset"    # Ljava/lang/String;

    .prologue
    .line 1137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 1139
    .local v8, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v8, :cond_2

    .line 1151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1155
    .local v15, "quotedPrintable":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 1156
    const-string v20, "\r\n"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1186
    .local v10, "lines":[Ljava/lang/String;
    :goto_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v13, "list_new":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v0, v10

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_b

    .line 1193
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 1195
    .local v11, "lines_new":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    array-length v0, v11

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    .line 1203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1204
    .local v17, "rawString":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1205
    const-string v20, "vCard"

    const-string v21, "Given raw string is empty."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_0
    const/16 v16, 0x0

    .line 1210
    .local v16, "rawBytes":[B
    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 1216
    :goto_4
    const/4 v4, 0x0

    .line 1218
    .local v4, "decodedBytes":[B
    :try_start_1
    invoke-static/range {v16 .. v16}, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->decodeQuotedPrintable([B)[B
    :try_end_1
    .catch Lcom/android/vcard/VCardUtils$DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1224
    :goto_5
    const/16 v18, 0x0

    .line 1226
    .local v18, "reVal_Str":Ljava/lang/String;
    :try_start_2
    new-instance v18, Ljava/lang/String;

    .end local v18    # "reVal_Str":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1231
    .restart local v18    # "reVal_Str":Ljava/lang/String;
    :goto_6
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "SHIFT_JIS"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1232
    invoke-static/range {v18 .. v18}, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1234
    .end local v18    # "reVal_Str":Ljava/lang/String;
    :cond_1
    return-object v18

    .line 1140
    .end local v4    # "decodedBytes":[B
    .end local v10    # "lines":[Ljava/lang/String;
    .end local v11    # "lines_new":[Ljava/lang/String;
    .end local v13    # "list_new":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "quotedPrintable":Ljava/lang/String;
    .end local v16    # "rawBytes":[B
    .end local v17    # "rawString":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1141
    .local v3, "ch":C
    const/16 v20, 0x3d

    move/from16 v0, v20

    if-ne v3, v0, :cond_4

    add-int/lit8 v20, v8, -0x1

    move/from16 v0, v20

    if-ge v6, v0, :cond_4

    .line 1142
    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1143
    .local v14, "nextCh":C
    const/16 v20, 0x20

    move/from16 v0, v20

    if-eq v14, v0, :cond_3

    const/16 v20, 0x9

    move/from16 v0, v20

    if-ne v14, v0, :cond_4

    .line 1144
    :cond_3
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1145
    add-int/lit8 v6, v6, 0x1

    .line 1139
    .end local v14    # "nextCh":C
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1149
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1158
    .end local v3    # "ch":C
    .restart local v15    # "quotedPrintable":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1159
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    .line 1160
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    :goto_8
    if-lt v6, v8, :cond_7

    .line 1179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1180
    .local v7, "lastLine":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_6

    .line 1181
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .restart local v10    # "lines":[Ljava/lang/String;
    goto/16 :goto_1

    .line 1162
    .end local v7    # "lastLine":Ljava/lang/String;
    .end local v10    # "lines":[Ljava/lang/String;
    :cond_7
    invoke-virtual {v15, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1163
    .restart local v3    # "ch":C
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v3, v0, :cond_9

    .line 1164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_8
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1166
    :cond_9
    const/16 v20, 0xd

    move/from16 v0, v20

    if-ne v3, v0, :cond_a

    .line 1167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1169
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v20, v8, -0x1

    move/from16 v0, v20

    if-ge v6, v0, :cond_8

    .line 1170
    add-int/lit8 v20, v6, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1171
    .restart local v14    # "nextCh":C
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v14, v0, :cond_8

    .line 1172
    add-int/lit8 v6, v6, 0x1

    .line 1175
    goto :goto_9

    .line 1176
    .end local v14    # "nextCh":C
    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1188
    .end local v3    # "ch":C
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "lines":[Ljava/lang/String;
    .restart local v13    # "list_new":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    aget-object v9, v10, v20

    .line 1190
    .local v9, "line":Ljava/lang/String;
    const-string v22, "=0D=0A"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1191
    .local v19, "split":[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/vcard/VCardUtils;->getLine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 1196
    .end local v9    # "line":Ljava/lang/String;
    .end local v19    # "split":[Ljava/lang/String;
    .restart local v11    # "lines_new":[Ljava/lang/String;
    :cond_c
    aget-object v9, v11, v20

    .line 1197
    .restart local v9    # "line":Ljava/lang/String;
    const-string v22, "="

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1198
    const/16 v22, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1200
    :cond_d
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1211
    .end local v9    # "line":Ljava/lang/String;
    .restart local v16    # "rawBytes":[B
    .restart local v17    # "rawString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1212
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v20, "vCard"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Failed to decode: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    goto/16 :goto_4

    .line 1219
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "decodedBytes":[B
    :catch_1
    move-exception v5

    .line 1220
    .local v5, "e":Lcom/android/vcard/VCardUtils$DecoderException;
    const-string v20, "vCard"

    const-string v21, "DecoderException is thrown."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    move-object/from16 v4, v16

    goto/16 :goto_5

    .line 1227
    .end local v5    # "e":Lcom/android/vcard/VCardUtils$DecoderException;
    :catch_2
    move-exception v5

    .line 1228
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v20, "vCard"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Failed to encode: charset="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .restart local v18    # "reVal_Str":Ljava/lang/String;
    goto/16 :goto_6
.end method

.method public static sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 415
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 416
    .local v0, "list":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v1

    .line 417
    .local v1, "nameOrderType":I
    sparse-switch v1, :sswitch_data_0

    .line 438
    aput-object p3, v0, v3

    .line 439
    aput-object p2, v0, v4

    .line 440
    aput-object p1, v0, v5

    .line 444
    :goto_0
    return-object v0

    .line 419
    :sswitch_0
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    .line 420
    aput-object p3, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    aput-object p3, v0, v3

    .line 422
    aput-object p2, v0, v4

    .line 423
    aput-object p1, v0, v5

    goto :goto_0

    .line 425
    :cond_0
    aput-object p1, v0, v3

    .line 426
    aput-object p2, v0, v4

    .line 427
    aput-object p3, v0, v5

    goto :goto_0

    .line 432
    :sswitch_1
    aput-object p2, v0, v3

    .line 433
    aput-object p3, v0, v4

    .line 434
    aput-object p1, v0, v5

    goto :goto_0

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "orgString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 1026
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1027
    const/4 v8, 0x0

    .line 1055
    :goto_0
    return-object v8

    .line 1029
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1031
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v4, :cond_1

    .line 1055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1034
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1035
    .local v1, "ch":C
    invoke-static {v1}, Lcom/android/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v2

    .line 1036
    .local v2, "halfWidthText":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1037
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :goto_2
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1043
    invoke-virtual {p0, v3, v10}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v5

    .line 1044
    .local v5, "nextIndex":I
    sub-int v8, v5, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 1045
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1046
    .local v6, "tempChar":C
    invoke-static {v6}, Lcom/android/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v7

    .line 1047
    .local v7, "tempHalfWidthText":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 1048
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .end local v5    # "nextIndex":I
    .end local v6    # "tempChar":C
    .end local v7    # "tempHalfWidthText":Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-virtual {p0, v3, v10}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1

    .line 1039
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1050
    .restart local v5    # "nextIndex":I
    .restart local v6    # "tempChar":C
    .restart local v7    # "tempHalfWidthText":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 14
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "escapeIndicators"    # [I

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    const/16 v12, 0x22

    .line 995
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 996
    const-string p0, ""

    .line 998
    :cond_0
    const/16 v0, 0x20

    .line 999
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 1000
    .local v1, "asciiLast":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1001
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1002
    .local v6, "length":I
    const/4 v7, 0x0

    .line 1003
    .local v7, "needQuote":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v6, :cond_3

    .line 1018
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1019
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    new-array v9, v13, [Ljava/lang/String;

    aput-object v8, v9, v10

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->containsOnlyWhiteSpaces([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1020
    :cond_1
    const-string v8, ""

    .line 1019
    .end local v8    # "result":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v8

    .line 1004
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 1005
    .local v3, "codePoint":I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_4

    if-ne v3, v12, :cond_5

    .line 1003
    :cond_4
    :goto_2
    invoke-virtual {p0, v4, v13}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_0

    .line 1009
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1010
    array-length v11, p1

    move v9, v10

    :goto_3
    if-ge v9, v11, :cond_4

    aget v5, p1, v9

    .line 1011
    .local v5, "indicator":I
    if-ne v3, v5, :cond_6

    .line 1012
    const/4 v7, 0x1

    .line 1013
    goto :goto_2

    .line 1010
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1021
    .end local v3    # "codePoint":I
    .end local v5    # "indicator":I
    .restart local v8    # "result":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 987
    sget-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 991
    sget-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
