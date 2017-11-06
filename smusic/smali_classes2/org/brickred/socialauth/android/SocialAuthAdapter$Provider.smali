.class public final enum Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
.super Ljava/lang/Enum;
.source "SocialAuthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brickred/socialauth/android/SocialAuthAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum EMAIL:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum FACEBOOK:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum FLICKR:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum FOURSQUARE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum GENERIC:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum GOOGLE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum GOOGLEPLUS:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum INSTAGRAM:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum LINKEDIN:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum MMS:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum MYSPACE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum RUNKEEPER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum SALESFORCE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum TWITTER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum YAHOO:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

.field public static final enum YAMMER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;


# instance fields
.field private callbackUri:Ljava/lang/String;

.field private cancelUri:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v1, "FACEBOOK"

    const-string v3, "facebook"

    const-string v4, "fbconnect://success"

    const-string v5, "fbconnect://success?error_reason"

    invoke-direct/range {v0 .. v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->FACEBOOK:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "TWITTER"

    const-string/jumbo v6, "twitter"

    const-string v7, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do"

    const-string v8, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do?denied"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->TWITTER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 131
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "LINKEDIN"

    const-string v6, "linkedin"

    const-string v7, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do"

    const-string v8, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do?oauth_problem"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->LINKEDIN:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 133
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "MYSPACE"

    const-string v6, "myspace"

    const-string v7, "http://socialauth.in"

    const-string v8, "http://socialauth.in/?oauth_problem"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->MYSPACE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 134
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "RUNKEEPER"

    const-string/jumbo v6, "runkeeper"

    const-string v7, "http://socialauth.in/socialauthdemo/socialauthSuccessAction.do"

    const-string v8, "http://socialauth.in/socialauthdemo/socialauthSuccessAction.do/?error"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->RUNKEEPER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 136
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "YAHOO"

    const/4 v5, 0x5

    const-string/jumbo v6, "yahoo"

    const-string v7, "http://socialauth.in/socialauthdemo"

    const-string v8, "http://socialauth.in/socialauthdemo/?oauth_problem"

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->YAHOO:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 137
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "FOURSQUARE"

    const/4 v5, 0x6

    const-string v6, "foursquare"

    const-string v7, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do"

    const-string v8, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do/?oauth_problem"

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->FOURSQUARE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 139
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "GOOGLE"

    const/4 v5, 0x7

    const-string v6, "google"

    const-string v7, "http://socialauth.in/socialauthdemo"

    const-string v8, "http://socialauth.in/socialauthdemo/?oauth_problem"

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->GOOGLE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 141
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "YAMMER"

    const/16 v5, 0x8

    const-string/jumbo v6, "yammer"

    const-string v7, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do"

    const-string v8, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do/?oauth_problem"

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->YAMMER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 143
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "SALESFORCE"

    const/16 v5, 0x9

    const-string/jumbo v6, "salesforce"

    const-string v7, "https://socialauth.in:8443/socialauthdemo/socialAuthSuccessAction.do"

    const-string v8, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do/?oauth_problem"

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->SALESFORCE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 145
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "GOOGLEPLUS"

    const/16 v5, 0xa

    const-string v6, "googleplus"

    const-string v7, "http://opensource.brickred.com/socialauthdemo/socialAuthSuccessAction.do"

    const-string v8, "http://opensource.brickred.com/socialauthdemo/socialAuthSuccessAction.do/?oauth_problem"

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->GOOGLEPLUS:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 147
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "INSTAGRAM"

    const/16 v5, 0xb

    const-string v6, "instagram"

    const-string v7, "http://opensource.brickred.com/socialauthdemo/socialAuthSuccessAction.do"

    const-string v8, "http://opensource.brickred.com/socialauthdemo/socialAuthSuccessAction.do/?oauth_problem"

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->INSTAGRAM:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 149
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "FLICKR"

    const/16 v5, 0xc

    const-string v6, "flickr"

    const-string v7, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do"

    const-string v8, "http://socialauth.in/socialauthdemo/socialAuthSuccessAction.do/?oauth_problem"

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->FLICKR:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 151
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "EMAIL"

    const/16 v5, 0xd

    const-string/jumbo v6, "share_mail"

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->EMAIL:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 152
    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "MMS"

    const/16 v5, 0xe

    const-string/jumbo v6, "share_mms"

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->MMS:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    new-instance v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v4, "GENERIC"

    const/16 v5, 0xf

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->GENERIC:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    .line 128
    const/16 v0, 0x10

    new-array v0, v0, [Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    sget-object v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->FACEBOOK:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v1, v0, v2

    sget-object v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->TWITTER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v1, v0, v9

    sget-object v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->LINKEDIN:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v1, v0, v10

    sget-object v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->MYSPACE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v1, v0, v11

    sget-object v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->RUNKEEPER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->YAHOO:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->FOURSQUARE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->GOOGLE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->YAMMER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->SALESFORCE:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->GOOGLEPLUS:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->INSTAGRAM:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->FLICKR:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->EMAIL:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->MMS:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->GENERIC:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    aput-object v2, v0, v1

    sput-object v0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->$VALUES:[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "callbackUri"    # Ljava/lang/String;
    .param p5, "cancelUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput-object p3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->name:Ljava/lang/String;

    .line 165
    iput-object p5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->cancelUri:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->callbackUri:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    const-class v0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    return-object v0
.end method

.method public static values()[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->$VALUES:[Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v0}, [Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    return-object v0
.end method


# virtual methods
.method getCallBackUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->callbackUri:Ljava/lang/String;

    return-object v0
.end method

.method getCancelUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->cancelUri:Ljava/lang/String;

    return-object v0
.end method

.method public setCallBackUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "callbackUri"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->callbackUri:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->name:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->name:Ljava/lang/String;

    return-object v0
.end method
