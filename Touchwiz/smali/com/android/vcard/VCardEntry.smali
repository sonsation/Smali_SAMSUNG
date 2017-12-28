.class public Lcom/android/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardEntry$AndroidCustomData;,
        Lcom/android/vcard/VCardEntry$AnniversaryData;,
        Lcom/android/vcard/VCardEntry$BirthdayData;,
        Lcom/android/vcard/VCardEntry$EmailData;,
        Lcom/android/vcard/VCardEntry$EntryElement;,
        Lcom/android/vcard/VCardEntry$EntryElementIterator;,
        Lcom/android/vcard/VCardEntry$EntryLabel;,
        Lcom/android/vcard/VCardEntry$ImData;,
        Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;,
        Lcom/android/vcard/VCardEntry$IsIgnorableIterator;,
        Lcom/android/vcard/VCardEntry$NameCardData;,
        Lcom/android/vcard/VCardEntry$NameData;,
        Lcom/android/vcard/VCardEntry$NicknameData;,
        Lcom/android/vcard/VCardEntry$NoteData;,
        Lcom/android/vcard/VCardEntry$OrganizationData;,
        Lcom/android/vcard/VCardEntry$PhoneData;,
        Lcom/android/vcard/VCardEntry$PhotoData;,
        Lcom/android/vcard/VCardEntry$PhotoStateData;,
        Lcom/android/vcard/VCardEntry$PostalData;,
        Lcom/android/vcard/VCardEntry$SipData;,
        Lcom/android/vcard/VCardEntry$ToStringIterator;,
        Lcom/android/vcard/VCardEntry$WebsiteData;,
        Lcom/android/vcard/VCardEntry$XGroupNameData;
    }
.end annotation


# static fields
.field private static final DEFAULT_ORGANIZATION_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
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


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAndroidCustomDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;",
            ">;"
        }
    .end annotation
.end field

.field private mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

.field private mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContentsResolver:Landroid/content/ContentResolver;

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mLatitude:D

.field private mLongitude:D

.field private mMapImageFilename:Ljava/lang/String;

.field private mNameCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NameCardData;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameData:Lcom/android/vcard/VCardEntry$NameData;

.field private mNicknameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoStateData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mSipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$SipData;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownXData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation
.end field

.field private mXGroupNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$XGroupNameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 82
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-QQ"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-WHATSAPP"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-FACEBOOK"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2297
    sput-object v0, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 2298
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2193
    const/high16 v0, -0x40000000    # -2.0f

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntry;-><init>(I)V

    .line 2194
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "vcardType"    # I

    .prologue
    .line 2197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 2198
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1
    .param p1, "vcardType"    # I
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 2200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1957
    new-instance v0, Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {v0}, Lcom/android/vcard/VCardEntry$NameData;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 1976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mXGroupNameList:Ljava/util/List;

    .line 2201
    iput p1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 2202
    iput-object p2, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 2203
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 2264
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/android/vcard/VCardEntry$EmailData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2265
    return-void
.end method

.method private addIm(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "protocol"    # I
    .param p2, "customProtocol"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "isPrimary"    # Z

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 2586
    :cond_0
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2587
    return-void
.end method

.method private addNameCardBytes(Ljava/lang/String;[BZLjava/lang/String;)V
    .locals 3
    .param p1, "formatName"    # Ljava/lang/String;
    .param p2, "nameCardBytes"    # [B
    .param p3, "isPrimary"    # Z
    .param p4, "side"    # Ljava/lang/String;

    .prologue
    .line 2615
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameCardList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2616
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameCardList:Ljava/util/List;

    .line 2618
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_1

    .line 2623
    :goto_0
    return-void

    .line 2621
    :cond_1
    new-instance v0, Lcom/android/vcard/VCardEntry$NameCardData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/vcard/VCardEntry$NameCardData;-><init>(Ljava/lang/String;[BZLjava/lang/String;)V

    .line 2622
    .local v0, "nameCardData":Lcom/android/vcard/VCardEntry$NameCardData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameCardList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "companyName"    # Ljava/lang/String;
    .param p4, "departmentName"    # Ljava/lang/String;
    .param p5, "titleName"    # Ljava/lang/String;
    .param p6, "jobDescription"    # Ljava/lang/String;
    .param p7, "symbol"    # Ljava/lang/String;
    .param p8, "phoneticName"    # Ljava/lang/String;
    .param p9, "officeLocation"    # Ljava/lang/String;
    .param p10, "isPrimary"    # Z

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 2293
    :cond_0
    iget-object v11, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 2294
    invoke-direct/range {v0 .. v10}, Lcom/android/vcard/VCardEntry$OrganizationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2293
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2295
    return-void
.end method

.method private addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "organizationName"    # Ljava/lang/String;
    .param p2, "departmentName"    # Ljava/lang/String;
    .param p3, "titleName"    # Ljava/lang/String;
    .param p4, "phoneticName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "isPrimary"    # Z

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 2284
    :cond_0
    iget-object v7, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 2285
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry$OrganizationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2284
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2286
    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 2
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    .line 2257
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$NicknameData;

    invoke-direct {v1, p1}, Lcom/android/vcard/VCardEntry$NicknameData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2258
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2591
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 2593
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$NoteData;

    invoke-direct {v1, p1}, Lcom/android/vcard/VCardEntry$NoteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2594
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 2206
    iget-object v8, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v8, :cond_0

    .line 2207
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 2209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2210
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2212
    .local v7, "trimmed":Ljava/lang/String;
    const/4 v8, 0x6

    if-eq p1, v8, :cond_1

    iget v8, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v8}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2213
    :cond_1
    move-object v2, v7

    .line 2242
    .local v2, "formattedNumber":Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-direct {v6, v2, p1, p3, p4}, Lcom/android/vcard/VCardEntry$PhoneData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2243
    .local v6, "phoneData":Lcom/android/vcard/VCardEntry$PhoneData;
    iget-object v8, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2244
    return-void

    .line 2219
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .end local v6    # "phoneData":Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_2
    const/4 v3, 0x0

    .line 2220
    .local v3, "hasPauseOrWait":Z
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 2221
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v5, :cond_3

    .line 2239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 2222
    .end local v2    # "formattedNumber":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2224
    .local v1, "ch":C
    const/16 v8, 0x70

    if-eq v1, v8, :cond_4

    const/16 v8, 0x50

    if-ne v1, v8, :cond_5

    .line 2225
    :cond_4
    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2226
    const/4 v3, 0x1

    .line 2221
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2227
    :cond_5
    const/16 v8, 0x77

    if-eq v1, v8, :cond_6

    const/16 v8, 0x57

    if-ne v1, v8, :cond_7

    .line 2228
    :cond_6
    const/16 v8, 0x3b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2229
    const/4 v3, 0x1

    .line 2230
    goto :goto_2

    .line 2231
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 3
    .param p1, "formatName"    # Ljava/lang/String;
    .param p2, "photoBytes"    # [B
    .param p3, "isPrimary"    # Z

    .prologue
    .line 2597
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2598
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 2600
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_1

    .line 2605
    :goto_0
    return-void

    .line 2603
    :cond_1
    new-instance v0, Lcom/android/vcard/VCardEntry$PhotoData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/vcard/VCardEntry$PhotoData;-><init>(Ljava/lang/String;[BZ)V

    .line 2604
    .local v0, "photoData":Lcom/android/vcard/VCardEntry$PhotoData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addPhotoState(Ljava/lang/String;)V
    .locals 2
    .param p1, "photoState"    # Ljava/lang/String;

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoStateList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2609
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoStateList:Ljava/util/List;

    .line 2611
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoStateList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$PhotoStateData;

    invoke-direct {v1, p1}, Lcom/android/vcard/VCardEntry$PhotoStateData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2612
    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2268
    .local p2, "propValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2269
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 2272
    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 2271
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/vcard/VCardEntry$PostalData;->constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/vcard/VCardEntry$PostalData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2273
    return-void
.end method

.method private addSip(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "sipData"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$SipData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/vcard/VCardEntry$SipData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2251
    return-void
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Lcom/android/vcard/VCardEntry;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 3404
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3408
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2301
    .local p1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const-string v4, "SORT-AS"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 2302
    .local v2, "sortAsCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2303
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 2304
    const-string v4, "vCard"

    .line 2305
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Incorrect multiple SORT_AS parameters detected: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2306
    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2305
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2304
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 2308
    invoke-static {v4, v5}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 2310
    .local v3, "sortNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2311
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2316
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "sortNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v4

    .line 2311
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "sortNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2312
    .local v1, "elem":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2316
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "elem":Ljava/lang/String;
    .end local v3    # "sortNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private constructDisplayName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3310
    const/4 v6, 0x0

    .line 3312
    .local v6, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$12(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3313
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$12(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v6

    .line 3329
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 3330
    const-string v6, ""

    .line 3332
    :cond_1
    return-object v6

    .line 3314
    :cond_2
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->emptyStructuredName()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3315
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v1}, Lcom/android/vcard/VCardEntry$NameData;->access$14(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    .line 3316
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2}, Lcom/android/vcard/VCardEntry$NameData;->access$15(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$16(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v4}, Lcom/android/vcard/VCardEntry$NameData;->access$17(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->access$18(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    .line 3315
    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3317
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->emptyPhoneticStructuredName()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3318
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 3319
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v1}, Lcom/android/vcard/VCardEntry$NameData;->access$0(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2}, Lcom/android/vcard/VCardEntry$NameData;->access$1(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$2(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    .line 3318
    invoke-static {v0, v1, v2, v3}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3320
    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 3321
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->access$0(Lcom/android/vcard/VCardEntry$PhoneData;)Ljava/lang/String;

    move-result-object v6

    .line 3322
    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 3323
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$EmailData;->access$0(Lcom/android/vcard/VCardEntry$EmailData;)Ljava/lang/String;

    move-result-object v6

    .line 3324
    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 3325
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PostalData;

    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v6

    .line 3326
    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3327
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3299
    .local p1, "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    .line 3302
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    .line 3303
    invoke-static {p1}, Lcom/android/vcard/VCardEntry$AndroidCustomData;->constructAndroidCustomData(Ljava/util/List;)Lcom/android/vcard/VCardEntry$AndroidCustomData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3304
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v3, 0x1

    .line 2671
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 2675
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "size":I
    if-ge v0, v3, :cond_1

    .line 2695
    .end local v0    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 2678
    .restart local v0    # "size":I
    :cond_1
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 2679
    const/4 v0, 0x5

    .line 2682
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 2693
    :goto_1
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$10(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto :goto_0

    .line 2685
    :pswitch_0
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$6(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    .line 2687
    :pswitch_1
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$7(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    .line 2689
    :pswitch_2
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$8(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    .line 2691
    :pswitch_3
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$9(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto :goto_1

    .line 2682
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 23
    .param p1, "type"    # I
    .param p4, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2330
    .local p2, "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 2331
    .local v10, "phoneticName":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 2332
    sget-object p2, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 2340
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v22

    .line 2341
    .local v22, "size":I
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2342
    packed-switch v22, :pswitch_data_0

    .line 2424
    const-string v5, ""

    .line 2426
    .local v5, "organizationName":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2427
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2428
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "organizationName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2433
    .restart local v5    # "organizationName":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2434
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2435
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "organizationName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2440
    .restart local v5    # "organizationName":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2441
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2442
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "organizationName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2447
    .restart local v5    # "organizationName":Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2448
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2449
    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "organizationName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2454
    .restart local v5    # "organizationName":Ljava/lang/String;
    :cond_4
    :goto_3
    const/4 v6, 0x0

    .line 2455
    .local v6, "departmentName":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2456
    .local v7, "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2457
    .local v8, "jobDescription":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2458
    .local v9, "symbol":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "phoneticName":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2459
    .restart local v10    # "phoneticName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2493
    .local v11, "officeLocation":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v2, :cond_d

    .line 2496
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2497
    const/4 v4, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2543
    :goto_5
    return-void

    .line 2344
    .end local v5    # "organizationName":Ljava/lang/String;
    .end local v6    # "departmentName":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "jobDescription":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    .end local v11    # "officeLocation":Ljava/lang/String;
    :pswitch_0
    const-string v5, ""

    .line 2345
    .restart local v5    # "organizationName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2346
    .restart local v6    # "departmentName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2347
    .restart local v7    # "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2348
    .restart local v8    # "jobDescription":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2349
    .restart local v9    # "symbol":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2350
    const/4 v11, 0x0

    .line 2351
    .restart local v11    # "officeLocation":Ljava/lang/String;
    goto :goto_4

    .line 2354
    .end local v5    # "organizationName":Ljava/lang/String;
    .end local v6    # "departmentName":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "jobDescription":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    .end local v11    # "officeLocation":Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2355
    .restart local v5    # "organizationName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2356
    .restart local v6    # "departmentName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2357
    .restart local v7    # "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2358
    .restart local v8    # "jobDescription":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2359
    .restart local v9    # "symbol":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2360
    const/4 v11, 0x0

    .line 2361
    .restart local v11    # "officeLocation":Ljava/lang/String;
    goto :goto_4

    .line 2364
    .end local v5    # "organizationName":Ljava/lang/String;
    .end local v6    # "departmentName":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "jobDescription":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    .end local v11    # "officeLocation":Ljava/lang/String;
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2365
    .restart local v5    # "organizationName":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2366
    .restart local v6    # "departmentName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2367
    .restart local v7    # "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2368
    .restart local v8    # "jobDescription":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2369
    .restart local v9    # "symbol":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2370
    const/4 v11, 0x0

    .line 2371
    .restart local v11    # "officeLocation":Ljava/lang/String;
    goto :goto_4

    .line 2374
    .end local v5    # "organizationName":Ljava/lang/String;
    .end local v6    # "departmentName":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "jobDescription":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    .end local v11    # "officeLocation":Ljava/lang/String;
    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2375
    .restart local v5    # "organizationName":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2376
    .restart local v6    # "departmentName":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2377
    .restart local v7    # "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2378
    .restart local v8    # "jobDescription":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2379
    .restart local v9    # "symbol":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2380
    const/4 v11, 0x0

    .line 2381
    .restart local v11    # "officeLocation":Ljava/lang/String;
    goto :goto_4

    .line 2384
    .end local v5    # "organizationName":Ljava/lang/String;
    .end local v6    # "departmentName":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "jobDescription":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    .end local v11    # "officeLocation":Ljava/lang/String;
    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2385
    .restart local v5    # "organizationName":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2386
    .restart local v6    # "departmentName":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2387
    .restart local v7    # "title":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2388
    .restart local v8    # "jobDescription":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2389
    .restart local v9    # "symbol":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2390
    const/4 v11, 0x0

    .line 2391
    .restart local v11    # "officeLocation":Ljava/lang/String;
    goto/16 :goto_4

    .line 2394
    .end local v5    # "organizationName":Ljava/lang/String;
    .end local v6    # "departmentName":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "jobDescription":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    .end local v11    # "officeLocation":Ljava/lang/String;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2395
    .restart local v5    # "organizationName":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2396
    .restart local v6    # "departmentName":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2397
    .restart local v7    # "title":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2398
    .restart local v8    # "jobDescription":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2399
    .restart local v9    # "symbol":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2400
    const/4 v11, 0x0

    .line 2401
    .restart local v11    # "officeLocation":Ljava/lang/String;
    goto/16 :goto_4

    .line 2404
    .end local v5    # "organizationName":Ljava/lang/String;
    .end local v6    # "departmentName":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "jobDescription":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    .end local v11    # "officeLocation":Ljava/lang/String;
    :pswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2405
    .restart local v5    # "organizationName":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2406
    .restart local v6    # "departmentName":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2407
    .restart local v7    # "title":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2408
    .restart local v8    # "jobDescription":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2409
    .restart local v9    # "symbol":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "phoneticName":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2410
    .restart local v10    # "phoneticName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2411
    .restart local v11    # "officeLocation":Ljava/lang/String;
    goto/16 :goto_4

    .line 2414
    .end local v5    # "organizationName":Ljava/lang/String;
    .end local v6    # "departmentName":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "jobDescription":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    .end local v11    # "officeLocation":Ljava/lang/String;
    :pswitch_7
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2415
    .restart local v5    # "organizationName":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2416
    .restart local v6    # "departmentName":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2417
    .restart local v7    # "title":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2418
    .restart local v8    # "jobDescription":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2419
    .restart local v9    # "symbol":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "phoneticName":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2420
    .restart local v10    # "phoneticName":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2421
    .restart local v11    # "officeLocation":Ljava/lang/String;
    goto/16 :goto_4

    .line 2430
    .end local v6    # "departmentName":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "jobDescription":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    .end local v11    # "officeLocation":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2437
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 2444
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 2451
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 2463
    .end local v5    # "organizationName":Ljava/lang/String;
    :cond_9
    packed-switch v22, :pswitch_data_1

    .line 2475
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2478
    .restart local v5    # "organizationName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 2479
    .local v19, "builder":Ljava/lang/StringBuilder;
    const/16 v20, 0x1

    .local v20, "i":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    .line 2485
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2488
    .end local v19    # "builder":Ljava/lang/StringBuilder;
    .end local v20    # "i":I
    .restart local v6    # "departmentName":Ljava/lang/String;
    :goto_7
    const/4 v7, 0x0

    .line 2489
    .restart local v7    # "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2490
    .restart local v8    # "jobDescription":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2491
    .restart local v9    # "symbol":Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11    # "officeLocation":Ljava/lang/String;
    goto/16 :goto_4

    .line 2465
    .end local v5    # "organizationName":Ljava/lang/String;
    .end local v6    # "departmentName":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "jobDescription":Ljava/lang/String;
    .end local v9    # "symbol":Ljava/lang/String;
    .end local v11    # "officeLocation":Ljava/lang/String;
    :pswitch_8
    const-string v5, ""

    .line 2466
    .restart local v5    # "organizationName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2467
    .restart local v6    # "departmentName":Ljava/lang/String;
    goto :goto_7

    .line 2470
    .end local v5    # "organizationName":Ljava/lang/String;
    .end local v6    # "departmentName":Ljava/lang/String;
    :pswitch_9
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2471
    .restart local v5    # "organizationName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2472
    .restart local v6    # "departmentName":Ljava/lang/String;
    goto :goto_7

    .line 2480
    .end local v6    # "departmentName":Ljava/lang/String;
    .restart local v19    # "builder":Ljava/lang/StringBuilder;
    .restart local v20    # "i":I
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_b

    .line 2481
    const/16 v2, 0x20

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2483
    :cond_b
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2479
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 2500
    .end local v19    # "builder":Ljava/lang/StringBuilder;
    .end local v20    # "i":I
    .restart local v6    # "departmentName":Ljava/lang/String;
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v8    # "jobDescription":Ljava/lang/String;
    .restart local v9    # "symbol":Ljava/lang/String;
    .restart local v11    # "officeLocation":Ljava/lang/String;
    :cond_c
    const/4 v15, 0x0

    move-object/from16 v12, p0

    move-object v13, v5

    move-object v14, v6

    move-object/from16 v16, v10

    move/from16 v17, p1

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_5

    .line 2505
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2542
    const/4 v15, 0x0

    move-object/from16 v12, p0

    move-object v13, v5

    move-object v14, v6

    move-object/from16 v16, v10

    move/from16 v17, p1

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_5

    .line 2505
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 2508
    .local v21, "organizationData":Lcom/android/vcard/VCardEntry$OrganizationData;
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2509
    invoke-static/range {v21 .. v21}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$0(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 2510
    invoke-static/range {v21 .. v21}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$1(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 2511
    invoke-static/range {v21 .. v21}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$2(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 2512
    invoke-static/range {v21 .. v21}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$3(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 2513
    invoke-static/range {v21 .. v21}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$4(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 2514
    invoke-static/range {v21 .. v21}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$5(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 2515
    invoke-static/range {v21 .. v21}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$6(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 2518
    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$7(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    .line 2519
    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$8(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    .line 2520
    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$9(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    .line 2521
    move-object/from16 v0, v21

    invoke-static {v0, v8}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$10(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    .line 2522
    move-object/from16 v0, v21

    invoke-static {v0, v9}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$11(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    .line 2523
    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$12(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    .line 2524
    move-object/from16 v0, v21

    invoke-static {v0, v11}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$13(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    .line 2525
    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$14(Lcom/android/vcard/VCardEntry$OrganizationData;Z)V

    goto/16 :goto_5

    .line 2529
    :cond_10
    invoke-static/range {v21 .. v21}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$0(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    .line 2530
    invoke-static/range {v21 .. v21}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$1(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    .line 2533
    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$7(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    .line 2534
    move-object/from16 v0, v21

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$8(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    .line 2535
    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$14(Lcom/android/vcard/VCardEntry$OrganizationData;Z)V

    goto/16 :goto_5

    .line 2342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2463
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "elems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2705
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->access$0(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2706
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->access$1(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2707
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->access$2(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2764
    :cond_0
    :goto_0
    return-void

    .line 2714
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    if-lt v4, v8, :cond_0

    .line 2721
    if-le v4, v10, :cond_2

    .line 2722
    const/4 v4, 0x3

    .line 2725
    :cond_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 2726
    const/4 v3, 0x1

    .line 2727
    .local v3, "onlyFirstElemIsNonEmpty":Z
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_4

    .line 2733
    :goto_2
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/vcard/VCardConfig;->isShiftJisAsDefault()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2734
    :cond_3
    if-eqz v3, :cond_8

    .line 2735
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2736
    .local v2, "namesArray":[Ljava/lang/String;
    array-length v1, v2

    .line 2737
    .local v1, "nameArrayLength":I
    if-ne v1, v10, :cond_6

    .line 2739
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v7

    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    .line 2740
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v8

    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$3(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    .line 2741
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v9

    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto :goto_0

    .line 2728
    .end local v1    # "nameArrayLength":I
    .end local v2    # "namesArray":[Ljava/lang/String;
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 2729
    const/4 v3, 0x0

    .line 2730
    goto :goto_2

    .line 2727
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2742
    .restart local v1    # "nameArrayLength":I
    .restart local v2    # "namesArray":[Ljava/lang/String;
    :cond_6
    if-ne v1, v9, :cond_7

    .line 2745
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v7

    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    .line 2746
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v8

    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto :goto_0

    .line 2748
    :cond_7
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/vcard/VCardEntry$NameData;->access$4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto :goto_0

    .line 2755
    .end local v0    # "i":I
    .end local v1    # "nameArrayLength":I
    .end local v2    # "namesArray":[Ljava/lang/String;
    .end local v3    # "onlyFirstElemIsNonEmpty":Z
    :cond_8
    packed-switch v4, :pswitch_data_0

    .line 2762
    :goto_3
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/vcard/VCardEntry$NameData;->access$5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2758
    :pswitch_0
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/vcard/VCardEntry$NameData;->access$3(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    .line 2760
    :pswitch_1
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/vcard/VCardEntry$NameData;->access$4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto :goto_3

    .line 2755
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .param p1, "propValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3253
    .local p2, "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3289
    :cond_0
    :goto_0
    return-void

    .line 3256
    :cond_1
    const-string v5, "sip:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3257
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 3263
    :cond_2
    const/4 v2, -0x1

    .line 3264
    .local v2, "type":I
    const/4 v1, 0x0

    .line 3265
    .local v1, "label":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3266
    .local v0, "isPrimary":Z
    if-eqz p2, :cond_4

    .line 3267
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3285
    :cond_4
    if-gez v2, :cond_5

    .line 3286
    const/4 v2, 0x3

    .line 3288
    :cond_5
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/android/vcard/VCardEntry;->addSip(Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0

    .line 3267
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3268
    .local v3, "typeStringOrg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 3269
    .local v4, "typeStringUpperCase":Ljava/lang/String;
    const-string v6, "PREF"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3270
    const/4 v0, 0x1

    .line 3271
    goto :goto_1

    :cond_7
    const-string v6, "HOME"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3272
    const/4 v2, 0x1

    .line 3273
    goto :goto_1

    :cond_8
    const-string v6, "WORK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3274
    const/4 v2, 0x2

    .line 3275
    goto :goto_1

    :cond_9
    if-gez v2, :cond_3

    .line 3276
    const-string v6, "X-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3277
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3281
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 3279
    :cond_a
    move-object v1, v3

    goto :goto_2
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2553
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 2556
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2579
    :cond_0
    :goto_0
    return-void

    .line 2559
    :cond_1
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2560
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 2561
    .local v7, "organizationData":Lcom/android/vcard/VCardEntry$OrganizationData;
    invoke-static {v7}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$2(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-static {v7}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$2(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v7}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$2(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2562
    :cond_2
    invoke-static {v7, p1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$9(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    goto :goto_0

    .line 2567
    .end local v7    # "organizationData":Lcom/android/vcard/VCardEntry$OrganizationData;
    :cond_3
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2575
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 2576
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 2567
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 2568
    .restart local v7    # "organizationData":Lcom/android/vcard/VCardEntry$OrganizationData;
    invoke-static {v7}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$2(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 2569
    invoke-static {v7, p1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$9(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 3
    .param p2, "iterator"    # Lcom/android/vcard/VCardEntry$EntryElementIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/vcard/VCardEntry$EntryElement;",
            ">;",
            "Lcom/android/vcard/VCardEntry$EntryElementIterator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2055
    .local p1, "elemList":Ljava/util/List;, "Ljava/util/List<+Lcom/android/vcard/VCardEntry$EntryElement;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2056
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry$EntryElement;

    invoke-interface {v1}, Lcom/android/vcard/VCardEntry$EntryElement;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 2057
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2060
    invoke-interface {p2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 2062
    :cond_0
    return-void

    .line 2057
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryElement;

    .line 2058
    .local v0, "elem":Lcom/android/vcard/VCardEntry$EntryElement;
    invoke-interface {p2, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    goto :goto_0
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 3412
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 3413
    .local v2, "size":I
    if-le v2, v4, :cond_2

    .line 3414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3415
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3416
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3426
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :goto_1
    return-object v4

    .line 3416
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3417
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3418
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_0

    .line 3419
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3423
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    if-ne v2, v4, :cond_3

    .line 3424
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 3426
    :cond_3
    const-string v4, ""

    goto :goto_1
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 2635
    iget v3, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2636
    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$0(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2637
    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$1(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2638
    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$2(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2665
    :cond_0
    :goto_0
    return-void

    .line 2642
    :cond_1
    const-string v3, "SORT-AS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2643
    .local v1, "sortAsCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2644
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 2645
    const-string v3, "vCard"

    .line 2646
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2647
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2646
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2645
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 2649
    invoke-static {v3, v4}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 2651
    .local v2, "sortNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 2652
    .local v0, "size":I
    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    .line 2653
    const/4 v0, 0x3

    .line 2655
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 2661
    :goto_1
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/vcard/VCardEntry$NameData;->access$5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto :goto_0

    .line 2657
    :pswitch_0
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/vcard/VCardEntry$NameData;->access$3(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    .line 2659
    :pswitch_1
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/vcard/VCardEntry$NameData;->access$4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto :goto_1

    .line 2655
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addChild(Lcom/android/vcard/VCardEntry;)V
    .locals 1
    .param p1, "child"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 3292
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    .line 3295
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3296
    return-void
.end method

.method public addProperty(Lcom/android/vcard/VCardProperty;)V
    .locals 36
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;

    .prologue
    .line 2767
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v22

    .line 2768
    .local v22, "propertyName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getParameterMap()Ljava/util/Map;

    move-result-object v17

    .line 2769
    .local v17, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v24

    .line 2770
    .local v24, "propertyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getByteValue()[B

    move-result-object v21

    .line 2772
    .local v21, "propertyBytes":[B
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 2773
    :cond_0
    if-nez v21, :cond_2

    .line 3245
    :cond_1
    :goto_0
    return-void

    .line 2776
    :cond_2
    if-eqz v24, :cond_4

    .line 2777
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2780
    .local v7, "propValue":Ljava/lang/String;
    :goto_1
    const-string v4, "VERSION"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2782
    const-string v4, "FN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2783
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2784
    const/4 v4, 0x0

    invoke-static {v7, v4}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 2785
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v4, v7}, Lcom/android/vcard/VCardEntry$NameData;->access$11(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto :goto_0

    .line 2778
    .end local v7    # "propValue":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 2786
    .restart local v7    # "propValue":Ljava/lang/String;
    :cond_5
    const-string v4, "NAME"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v4}, Lcom/android/vcard/VCardEntry$NameData;->access$12(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v4, v7}, Lcom/android/vcard/VCardEntry$NameData;->access$11(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto :goto_0

    .line 2792
    :cond_6
    const-string v4, "N"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2793
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 2794
    :cond_7
    const-string v4, "SORT-STRING"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v4, v7}, Lcom/android/vcard/VCardEntry$NameData;->access$13(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2796
    :cond_8
    const-string v4, "NICKNAME"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2797
    const-string v4, "X-NICKNAME"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2798
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2799
    :cond_a
    const-string v4, "SOUND"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2800
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 2801
    .local v25, "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v25, :cond_1

    .line 2802
    const-string v4, "X-IRMC-N"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2809
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2810
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_b

    .line 2811
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2819
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v7, v4}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 2820
    .local v20, "phoneticNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2824
    .end local v20    # "phoneticNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v7, v4}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 2825
    .restart local v20    # "phoneticNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2830
    .end local v20    # "phoneticNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_d
    const-string v4, "ADR"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2831
    const/16 v33, 0x1

    .line 2832
    .local v33, "valuesAreAllEmpty":Z
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_12

    .line 2838
    :goto_2
    if-nez v33, :cond_1

    .line 2842
    const/4 v8, -0x1

    .line 2843
    .local v8, "type":I
    const/16 v16, 0x0

    .line 2844
    .local v16, "label":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2845
    .local v9, "isPrimary":Z
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 2846
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v25, :cond_10

    .line 2847
    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_13

    .line 2880
    :cond_10
    if-gez v8, :cond_11

    .line 2881
    const/4 v8, 0x1

    .line 2884
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v8, v1, v2, v9}, Lcom/android/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2832
    .end local v8    # "type":I
    .end local v9    # "isPrimary":Z
    .end local v16    # "label":Ljava/lang/String;
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 2833
    .local v32, "value":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 2834
    const/16 v33, 0x0

    .line 2835
    goto :goto_2

    .line 2847
    .end local v32    # "value":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v9    # "isPrimary":Z
    .restart local v16    # "label":Ljava/lang/String;
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 2848
    .local v28, "typeStringOrg":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v30

    .line 2849
    .local v30, "typeStringUpperCase":Ljava/lang/String;
    const-string v6, "PREF"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2850
    const/4 v9, 0x1

    .line 2851
    goto :goto_3

    :cond_14
    const-string v6, "HOME"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2852
    const/4 v8, 0x1

    .line 2853
    const/16 v16, 0x0

    .line 2854
    goto :goto_3

    :cond_15
    const-string v6, "WORK"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 2856
    const-string v6, "COMPANY"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2860
    :cond_16
    const/4 v8, 0x2

    .line 2861
    const/16 v16, 0x0

    .line 2862
    goto :goto_3

    :cond_17
    const-string v6, "PARCEL"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2863
    const-string v6, "DOM"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2864
    const-string v6, "INTL"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2866
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "OTHER"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2867
    const/4 v8, 0x3

    .line 2868
    const-string v16, ""

    .line 2869
    goto/16 :goto_3

    :cond_18
    if-gez v8, :cond_f

    .line 2870
    const/4 v8, 0x0

    .line 2871
    const-string v6, "X-"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2872
    const/4 v6, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 2873
    goto/16 :goto_3

    .line 2874
    :cond_19
    move-object/from16 v16, v28

    goto/16 :goto_3

    .line 2885
    .end local v8    # "type":I
    .end local v9    # "isPrimary":Z
    .end local v16    # "label":Ljava/lang/String;
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v28    # "typeStringOrg":Ljava/lang/String;
    .end local v30    # "typeStringUpperCase":Ljava/lang/String;
    .end local v33    # "valuesAreAllEmpty":Z
    :cond_1a
    const-string v4, "EMAIL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2886
    const/4 v8, -0x1

    .line 2887
    .restart local v8    # "type":I
    const/16 v16, 0x0

    .line 2888
    .restart local v16    # "label":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2889
    .restart local v9    # "isPrimary":Z
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 2890
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v25, :cond_1c

    .line 2891
    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 2913
    :cond_1c
    if-gez v8, :cond_1d

    .line 2914
    const/4 v8, 0x3

    .line 2916
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v8, v7, v1, v9}, Lcom/android/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2891
    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 2892
    .restart local v28    # "typeStringOrg":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v30

    .line 2893
    .restart local v30    # "typeStringUpperCase":Ljava/lang/String;
    const-string v6, "PREF"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2894
    const/4 v9, 0x1

    .line 2895
    goto :goto_4

    :cond_1f
    const-string v6, "HOME"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 2896
    const/4 v8, 0x1

    .line 2897
    goto :goto_4

    :cond_20
    const-string v6, "WORK"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 2898
    const/4 v8, 0x2

    .line 2899
    goto :goto_4

    :cond_21
    const-string v6, "CELL"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 2900
    const/4 v8, 0x4

    .line 2901
    goto :goto_4

    :cond_22
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v6

    if-eqz v6, :cond_23

    const-string v6, "OTHER"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 2902
    const/4 v8, 0x3

    .line 2903
    goto :goto_4

    :cond_23
    if-gez v8, :cond_1b

    .line 2904
    const-string v6, "X-"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 2905
    const/4 v6, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 2909
    :goto_5
    const/4 v8, 0x0

    goto :goto_4

    .line 2907
    :cond_24
    move-object/from16 v16, v28

    goto :goto_5

    .line 2917
    .end local v8    # "type":I
    .end local v9    # "isPrimary":Z
    .end local v16    # "label":Ljava/lang/String;
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v28    # "typeStringOrg":Ljava/lang/String;
    .end local v30    # "typeStringUpperCase":Ljava/lang/String;
    :cond_25
    const-string v4, "ORG"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2918
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2919
    const/4 v9, 0x0

    .line 2920
    .restart local v9    # "isPrimary":Z
    const/4 v8, -0x1

    .line 2921
    .restart local v8    # "type":I
    const/16 v16, 0x0

    .line 2922
    .restart local v16    # "label":Ljava/lang/String;
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 2923
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v25, :cond_26

    .line 2924
    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_28

    .line 2945
    :cond_26
    if-gez v8, :cond_27

    .line 2946
    const/4 v8, 0x1

    .line 2948
    :cond_27
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-direct {v0, v8, v1, v2, v9}, Lcom/android/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 2924
    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 2925
    .local v27, "typeString":Ljava/lang/String;
    move-object/from16 v29, v27

    .line 2926
    .local v29, "typeStringOrigin":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 2927
    const-string v6, "PREF"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 2928
    const/4 v9, 0x1

    .line 2929
    goto :goto_6

    :cond_29
    const-string v6, "WORK"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 2930
    const/4 v8, 0x1

    .line 2931
    goto :goto_6

    :cond_2a
    const-string v6, "OTHER"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 2932
    const/4 v8, 0x2

    .line 2933
    goto :goto_6

    .line 2934
    :cond_2b
    const-string v6, "X-"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    if-gez v8, :cond_2c

    .line 2935
    const/4 v6, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 2940
    :cond_2c
    const/4 v8, 0x0

    .line 2941
    move-object/from16 v16, v29

    goto :goto_6

    .line 2951
    .end local v8    # "type":I
    .end local v9    # "isPrimary":Z
    .end local v16    # "label":Ljava/lang/String;
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v27    # "typeString":Ljava/lang/String;
    .end local v29    # "typeStringOrigin":Ljava/lang/String;
    :cond_2d
    const/4 v8, 0x1

    .line 2952
    .restart local v8    # "type":I
    const/4 v9, 0x0

    .line 2953
    .restart local v9    # "isPrimary":Z
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 2954
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v25, :cond_2f

    .line 2955
    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_30

    .line 2961
    :cond_2f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-direct {v0, v4, v1, v2, v9}, Lcom/android/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 2955
    :cond_30
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 2956
    .restart local v27    # "typeString":Ljava/lang/String;
    const-string v6, "PREF"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 2957
    const/4 v9, 0x1

    goto :goto_7

    .line 2963
    .end local v8    # "type":I
    .end local v9    # "isPrimary":Z
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v27    # "typeString":Ljava/lang/String;
    :cond_31
    const-string v4, "TITLE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2964
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2965
    :cond_32
    const-string v4, "ROLE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2968
    const-string v4, "PHOTO"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 2969
    const-string v4, "LOGO"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2970
    :cond_33
    const-string v4, "VALUE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Collection;

    .line 2971
    .local v18, "paramMapValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v18, :cond_34

    const-string v4, "URL"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2974
    :cond_34
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 2975
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 2976
    .local v14, "formatName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2977
    .restart local v9    # "isPrimary":Z
    if-eqz v25, :cond_36

    .line 2978
    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_37

    .line 2986
    :cond_36
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1, v9}, Lcom/android/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_0

    .line 2978
    :cond_37
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 2979
    .local v31, "typeValue":Ljava/lang/String;
    const-string v6, "PREF"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 2980
    const/4 v9, 0x1

    .line 2981
    goto :goto_8

    :cond_38
    if-nez v14, :cond_35

    .line 2982
    move-object/from16 v14, v31

    goto :goto_8

    .line 2988
    .end local v9    # "isPrimary":Z
    .end local v14    # "formatName":Ljava/lang/String;
    .end local v18    # "paramMapValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v31    # "typeValue":Ljava/lang/String;
    :cond_39
    const-string v4, "X-PHOTOSTATE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2989
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardEntry;->addPhotoState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2990
    :cond_3a
    const-string v4, "X-NAMECARDPHOTO"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2991
    const-string v4, "VALUE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Collection;

    .line 2992
    .restart local v18    # "paramMapValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v18, :cond_3b

    const-string v4, "URL"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2995
    :cond_3b
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 2996
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 2997
    .restart local v14    # "formatName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2998
    .restart local v9    # "isPrimary":Z
    if-eqz v25, :cond_3d

    .line 2999
    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 3007
    :cond_3d
    const-string v4, "FRONT"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1, v9, v4}, Lcom/android/vcard/VCardEntry;->addNameCardBytes(Ljava/lang/String;[BZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2999
    :cond_3e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 3000
    .restart local v31    # "typeValue":Ljava/lang/String;
    const-string v6, "PREF"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 3001
    const/4 v9, 0x1

    .line 3002
    goto :goto_9

    :cond_3f
    if-nez v14, :cond_3c

    .line 3003
    move-object/from16 v14, v31

    goto :goto_9

    .line 3009
    .end local v9    # "isPrimary":Z
    .end local v14    # "formatName":Ljava/lang/String;
    .end local v18    # "paramMapValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v31    # "typeValue":Ljava/lang/String;
    :cond_40
    const-string v4, "X-NAMECARDPHOTO-REVERSE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 3010
    const-string v4, "VALUE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Collection;

    .line 3011
    .restart local v18    # "paramMapValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v18, :cond_41

    const-string v4, "URL"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3014
    :cond_41
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 3015
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 3016
    .restart local v14    # "formatName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3017
    .restart local v9    # "isPrimary":Z
    if-eqz v25, :cond_43

    .line 3018
    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_44

    .line 3026
    :cond_43
    const-string v4, "BACK"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1, v9, v4}, Lcom/android/vcard/VCardEntry;->addNameCardBytes(Ljava/lang/String;[BZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3018
    :cond_44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 3019
    .restart local v31    # "typeValue":Ljava/lang/String;
    const-string v6, "PREF"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 3020
    const/4 v9, 0x1

    .line 3021
    goto :goto_a

    :cond_45
    if-nez v14, :cond_42

    .line 3022
    move-object/from16 v14, v31

    goto :goto_a

    .line 3028
    .end local v9    # "isPrimary":Z
    .end local v14    # "formatName":Ljava/lang/String;
    .end local v18    # "paramMapValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v31    # "typeValue":Ljava/lang/String;
    :cond_46
    const-string v4, "TEL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 3029
    const/16 v19, 0x0

    .line 3030
    .local v19, "phoneNumber":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3031
    .local v15, "isSip":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 3034
    const-string v4, "sip:"

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3035
    const/4 v15, 0x1

    .line 3048
    :goto_b
    if-eqz v15, :cond_4a

    .line 3049
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 3050
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v7, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 3036
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_47
    const-string v4, "tel:"

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 3037
    const/4 v4, 0x4

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 3038
    goto :goto_b

    .line 3042
    :cond_48
    move-object/from16 v19, v7

    .line 3044
    goto :goto_b

    .line 3045
    :cond_49
    move-object/from16 v19, v7

    goto :goto_b

    .line 3052
    :cond_4a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 3056
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 3057
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    .line 3061
    .local v26, "typeObject":Ljava/lang/Object;
    move-object/from16 v0, v26

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_4b

    .line 3062
    check-cast v26, Ljava/lang/Integer;

    .end local v26    # "typeObject":Ljava/lang/Object;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3063
    .restart local v8    # "type":I
    const/16 v16, 0x0

    .line 3073
    .restart local v16    # "label":Ljava/lang/String;
    :goto_c
    if-eqz v25, :cond_4d

    .line 3074
    const-string v4, "PREF"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 3075
    const/4 v9, 0x1

    .line 3080
    .restart local v9    # "isPrimary":Z
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v8, v1, v2, v9}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 3065
    .end local v8    # "type":I
    .end local v9    # "isPrimary":Z
    .end local v16    # "label":Ljava/lang/String;
    .restart local v26    # "typeObject":Ljava/lang/Object;
    :cond_4b
    const/4 v8, 0x0

    .line 3066
    .restart local v8    # "type":I
    if-eqz v26, :cond_4c

    .line 3067
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "label":Ljava/lang/String;
    goto :goto_c

    .line 3069
    .end local v16    # "label":Ljava/lang/String;
    :cond_4c
    const/16 v16, 0x0

    .restart local v16    # "label":Ljava/lang/String;
    goto :goto_c

    .line 3077
    .end local v26    # "typeObject":Ljava/lang/Object;
    :cond_4d
    const/4 v9, 0x0

    .restart local v9    # "isPrimary":Z
    goto :goto_d

    .line 3082
    .end local v8    # "type":I
    .end local v9    # "isPrimary":Z
    .end local v15    # "isSip":Z
    .end local v16    # "label":Ljava/lang/String;
    .end local v19    # "phoneNumber":Ljava/lang/String;
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_4e
    const-string v4, "X-SKYPE-PSTNNUMBER"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 3084
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 3085
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x7

    .line 3087
    .restart local v8    # "type":I
    if-eqz v25, :cond_4f

    .line 3088
    const-string v4, "PREF"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 3089
    const/4 v9, 0x1

    .line 3093
    .restart local v9    # "isPrimary":Z
    :goto_e
    const/4 v4, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v6, v9}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 3091
    .end local v9    # "isPrimary":Z
    :cond_4f
    const/4 v9, 0x0

    .restart local v9    # "isPrimary":Z
    goto :goto_e

    .line 3094
    .end local v8    # "type":I
    .end local v9    # "isPrimary":Z
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_50
    sget-object v4, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 3095
    sget-object v4, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3096
    .local v5, "protocol":I
    const/4 v9, 0x0

    .line 3097
    .restart local v9    # "isPrimary":Z
    const/4 v8, -0x1

    .line 3098
    .restart local v8    # "type":I
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 3099
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v25, :cond_52

    .line 3100
    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_51
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_54

    .line 3112
    :cond_52
    if-gez v8, :cond_53

    .line 3113
    const/4 v8, 0x1

    .line 3115
    :cond_53
    const/4 v6, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/vcard/VCardEntry;->addIm(ILjava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 3100
    :cond_54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 3101
    .restart local v27    # "typeString":Ljava/lang/String;
    const-string v6, "PREF"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 3102
    const/4 v9, 0x1

    .line 3103
    goto :goto_f

    :cond_55
    if-gez v8, :cond_51

    .line 3104
    const-string v6, "HOME"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 3105
    const/4 v8, 0x1

    .line 3106
    goto :goto_f

    :cond_56
    const-string v6, "WORK"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 3107
    const/4 v8, 0x2

    goto :goto_f

    .line 3116
    .end local v5    # "protocol":I
    .end local v8    # "type":I
    .end local v9    # "isPrimary":Z
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v27    # "typeString":Ljava/lang/String;
    :cond_57
    const-string v4, "NOTE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 3117
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3118
    :cond_58
    const-string v4, "URL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 3119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    if-nez v4, :cond_59

    .line 3120
    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 3122
    :cond_59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    new-instance v6, Lcom/android/vcard/VCardEntry$WebsiteData;

    invoke-direct {v6, v7}, Lcom/android/vcard/VCardEntry$WebsiteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3123
    :cond_5a
    const-string v4, "BDAY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 3124
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 3125
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_5b

    const-string v4, "-"

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 3126
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3127
    .local v10, "BdayBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3128
    const/16 v4, 0x2d

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3129
    const/4 v4, 0x4

    const/4 v6, 0x6

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3130
    const/16 v4, 0x2d

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3131
    const/4 v4, 0x6

    const/16 v6, 0x8

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3133
    new-instance v4, Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    goto/16 :goto_0

    .line 3134
    .end local v10    # "BdayBuilder":Ljava/lang/StringBuilder;
    :cond_5b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5c

    const-string v4, "-"

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 3135
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3136
    .restart local v10    # "BdayBuilder":Ljava/lang/StringBuilder;
    const/16 v4, 0x2d

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3137
    const/16 v4, 0x2d

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3138
    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    const/16 v4, 0x2d

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3140
    const/4 v4, 0x2

    const/4 v6, 0x4

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3142
    new-instance v4, Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    goto/16 :goto_0

    .line 3144
    .end local v10    # "BdayBuilder":Ljava/lang/StringBuilder;
    :cond_5c
    new-instance v4, Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-direct {v4, v7}, Lcom/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    goto/16 :goto_0

    .line 3148
    :cond_5d
    new-instance v4, Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-direct {v4, v7}, Lcom/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    goto/16 :goto_0

    .line 3151
    :cond_5e
    const-string v4, ".*BDAY.*"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 3152
    const-string v4, "TYPE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 3153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v4, :cond_5f

    if-eqz v7, :cond_5f

    const-string v4, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 3154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-virtual {v4, v7}, Lcom/android/vcard/VCardEntry$BirthdayData;->setBirthdayType(Ljava/lang/String;)V

    .line 3157
    :cond_5f
    const-string v4, "DATE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v4, :cond_1

    if-eqz v7, :cond_1

    .line 3159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-virtual {v4, v7}, Lcom/android/vcard/VCardEntry$BirthdayData;->setBirthdaySolarDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3162
    :cond_60
    const-string v4, "ANNIVERSARY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 3163
    new-instance v4, Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-direct {v4, v7}, Lcom/android/vcard/VCardEntry$AnniversaryData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    goto/16 :goto_0

    .line 3164
    :cond_61
    const-string v4, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 3165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v4, v7}, Lcom/android/vcard/VCardEntry$NameData;->access$4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3166
    :cond_62
    const-string v4, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 3167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v4, v7}, Lcom/android/vcard/VCardEntry$NameData;->access$3(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3168
    :cond_63
    const-string v4, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 3169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v4, v7}, Lcom/android/vcard/VCardEntry$NameData;->access$5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3170
    :cond_64
    const-string v4, "IMPP"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 3172
    const-string v4, "sip:"

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3173
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 3174
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v7, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 3176
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_65
    const-string v4, "X-SIP"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 3177
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3178
    const-string v4, "TYPE"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Collection;

    .line 3179
    .restart local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v7, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 3181
    .end local v25    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_66
    const-string v4, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 3184
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 3186
    if-eqz v24, :cond_67

    .line 3187
    move-object/from16 v11, v24

    .line 3212
    .local v11, "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_0

    .line 3189
    .end local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_67
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v7, v4}, Lcom/android/vcard/VCardUtils;->constructListFromIMValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 3190
    .restart local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_10

    .line 3193
    .end local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_68
    const-string v4, "vnd.android.cursor.item/relation"

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 3194
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v23

    .line 3195
    .local v23, "propertyRawValue":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 3196
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    move-object/from16 v0, v23

    invoke-static {v7, v0, v4}, Lcom/android/vcard/VCardUtils;->constructListFromRawValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 3197
    .restart local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_10

    .line 3198
    .end local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_69
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v7, v4}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 3200
    .restart local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_10

    .line 3201
    .end local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "propertyRawValue":Ljava/lang/String;
    :cond_6a
    const-string v4, "ENCODING"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    .line 3202
    .local v13, "encCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v13, :cond_6b

    .line 3203
    const-string v4, "QUOTED-PRINTABLE"

    invoke-interface {v13, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 3205
    move-object/from16 v11, v24

    .line 3206
    .restart local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_10

    .line 3208
    .end local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v7, v4}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .restart local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_10

    .line 3213
    .end local v11    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "encCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_6c
    const-string v4, "X-VZW-NGM-LOC"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 3214
    const-string v4, "NGM"

    const-string v6, "PROPERTY_X_VZW_NGM_LOC tag"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/vcard/VCardEntry;->mMapImageFilename:Ljava/lang/String;

    goto/16 :goto_0

    .line 649
    :cond_6d
    const-string v4, "GEO"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 3217
    const-string v4, "NGM"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v34, "GEO tag"

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3219
    const-string v4, "geo:"

    const-string v6, ""

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 3220
    .local v12, "data":[Ljava/lang/String;
    if-eqz v12, :cond_1

    array-length v4, v12

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 3221
    const/4 v4, 0x0

    aget-object v4, v12, v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vcard/VCardEntry;->mLatitude:D

    .line 3222
    const/4 v4, 0x1

    aget-object v4, v12, v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vcard/VCardEntry;->mLongitude:D

    goto/16 :goto_0

    .line 3227
    .end local v12    # "data":[Ljava/lang/String;
    :cond_6e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    .line 3228
    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    .line 3227
    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 3228
    if-nez v4, :cond_6f

    .line 3229
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isChineseSpacialized()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 3230
    :cond_6f
    const-string v4, "X-GN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 3231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mXGroupNameList:Ljava/util/List;

    if-nez v4, :cond_70

    .line 3232
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/vcard/VCardEntry;->mXGroupNameList:Ljava/util/List;

    .line 3235
    :cond_70
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mXGroupNameList:Ljava/util/List;

    new-instance v6, Lcom/android/vcard/VCardEntry$XGroupNameData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mContentsResolver:Landroid/content/ContentResolver;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v6, v7, v0, v1}, Lcom/android/vcard/VCardEntry$XGroupNameData;-><init>(Ljava/lang/String;Landroid/accounts/Account;Landroid/content/ContentResolver;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3236
    :cond_71
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "X-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    if-nez v4, :cond_72

    .line 3239
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    .line 3241
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public consolidateFields()V
    .locals 2

    .prologue
    .line 3339
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 3340
    return-void
.end method

.method public constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 3373
    if-nez p2, :cond_0

    .line 3374
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3377
    .restart local p2    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3400
    :goto_0
    return-object p2

    .line 3381
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3386
    .local v0, "backReferenceIndex":I
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 3387
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_2

    .line 3388
    const-string v4, "account_name"

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3389
    const-string v4, "account_type"

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3394
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3396
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3397
    .local v3, "start":I
    new-instance v4, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;-><init>(Lcom/android/vcard/VCardEntry;Ljava/util/List;I)V

    invoke-virtual {p0, v4}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 3398
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3400
    .local v2, "end":I
    goto :goto_0

    .line 3391
    .end local v2    # "end":I
    .end local v3    # "start":I
    :cond_2
    const-string v4, "account_name"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3392
    const-string v4, "account_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$BirthdayData;->access$0(Lcom/android/vcard/VCardEntry$BirthdayData;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChildlen()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3498
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3502
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3503
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 3505
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3451
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    return-object v0
.end method

.method public final getImList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3463
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .prologue
    .line 3487
    iget-wide v0, p0, Lcom/android/vcard/VCardEntry;->mLatitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .prologue
    .line 3491
    iget-wide v0, p0, Lcom/android/vcard/VCardEntry;->mLongitude:D

    return-wide v0
.end method

.method public getMapImageFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3483
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mMapImageFilename:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameCardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NameCardData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3476
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameCardList:Ljava/util/List;

    return-object v0
.end method

.method public final getNameData()Lcom/android/vcard/VCardEntry$NameData;
    .locals 1

    .prologue
    .line 3431
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    return-object v0
.end method

.method public final getNickNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    return-object v0
.end method

.method public final getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3447
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhotoStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoStateData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoStateList:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3455
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object v0
.end method

.method public getUnknownXData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3509
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    return-object v0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    return-object v0
.end method

.method public isIgnorable()Z
    .locals 2

    .prologue
    .line 3351
    new-instance v0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$IsIgnorableIterator;)V

    .line 3352
    .local v0, "iterator":Lcom/android/vcard/VCardEntry$IsIgnorableIterator;
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 3353
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->getResult()Z

    move-result v1

    return v1
.end method

.method public final iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 2
    .param p1, "iterator"    # Lcom/android/vcard/VCardEntry$EntryElementIterator;

    .prologue
    .line 2013
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationStarted()V

    .line 2014
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 2015
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 2016
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 2018
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2019
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2020
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2021
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2022
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2023
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2024
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoStateList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2025
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameCardList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2026
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2027
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2028
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2029
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2030
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2032
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$BirthdayData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 2034
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 2035
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    if-eqz v0, :cond_1

    .line 2039
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$AnniversaryData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 2040
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 2041
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 2044
    :cond_1
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isChineseSpacialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2045
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2046
    :cond_2
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mContentsResolver:Landroid/content/ContentResolver;

    sput-object v0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mResover:Landroid/content/ContentResolver;

    .line 2047
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mXGroupNameList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2050
    :cond_3
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationEnded()V

    .line 2051
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2187
    new-instance v0, Lcom/android/vcard/VCardEntry$ToStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$ToStringIterator;)V

    .line 2188
    .local v0, "iterator":Lcom/android/vcard/VCardEntry$ToStringIterator;
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2189
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ToStringIterator;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
