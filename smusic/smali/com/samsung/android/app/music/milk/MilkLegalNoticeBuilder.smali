.class public abstract enum Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
.super Ljava/lang/Enum;
.source "MilkLegalNoticeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

.field public static final enum ABOUT:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

.field private static final BIZ_INFO_URL:Ljava/lang/String; = "http://www.ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2000374001130200515&area1=&area2=&currpage=3&searchKey=01&searchVal=\uc0bc\uc131\uc804\uc790&stdate=&enddate="

.field private static final PRIVACY_URL:Ljava/lang/String; = "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information.html"

.field public static final enum STORE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

.field private static final TERMS_OF_SERVICE_URL:Ljava/lang/String; = "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;

    const-string v1, "STORE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->STORE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$2;

    const-string v1, "ABOUT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->ABOUT:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->STORE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->ABOUT:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Landroid/view/View$OnClickListener;
    .param p2, "x2"    # I

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->makeLinkSpan(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->makeLinksFocusable(Landroid/widget/TextView;)V

    return-void
.end method

.method public static launchLinkPrivacyPolicy(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const-string v0, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information.html"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->launchWebLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static launchLinkTermsOfService(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const-string v0, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->launchWebLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private static makeLinkSpan(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Landroid/text/SpannableString;
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 102
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .local v0, "link":Landroid/text/SpannableString;
    new-instance v1, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 107
    return-object v0
.end method

.method private static makeLinksFocusable(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 112
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 117
    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    return-object v0
.end method


# virtual methods
.method public abstract buildNotice(Landroid/widget/TextView;)V
.end method
