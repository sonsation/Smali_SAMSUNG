.class public Lcom/dawin/DawinVideoAd;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/DawinVideoAd$DawinVideoAdListener;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Lcom/dawin/objects/c;

.field private C:Lcom/dawin/objects/c;

.field private D:Lcom/dawin/objects/c;

.field private E:Lcom/dawin/objects/c;

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/objects/c;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

.field private H:Lcom/dawin/http/a;

.field private I:Landroid/widget/ProgressBar;

.field private J:Lcom/dawin/objects/AdInfos;

.field private K:Lcom/dawin/util/d;

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Landroid/widget/MediaController;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Lcom/dawin/objects/a;

.field private U:Z

.field private V:Z

.field private W:Z

.field a:Lcom/dawin/http/a$a;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:I

.field private ae:Z

.field private af:Z

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:Ljava/util/Timer;

.field private al:Ljava/util/TimerTask;

.field private am:Z

.field private an:Lcom/dawin/util/TickerAdBuilder$Ticker;

.field private ao:Z

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:Landroid/os/Handler;

.field private at:Landroid/os/Handler;

.field private au:Landroid/telephony/PhoneStateListener;

.field private av:Landroid/telephony/PhoneStateListener;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/dawin/util/i;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Lcom/dawin/a/a;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/dawin/DawinVideoAd;->b:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/dawin/DawinVideoAd;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    iput-object v4, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iput v1, p0, Lcom/dawin/DawinVideoAd;->O:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->Q:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->R:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->U:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->V:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->W:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->aa:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ab:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ac:Z

    iput v1, p0, Lcom/dawin/DawinVideoAd;->ad:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ae:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->af:Z

    iput v2, p0, Lcom/dawin/DawinVideoAd;->ag:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->ah:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->ai:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->aj:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->am:Z

    iput-object v4, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ao:Z

    iput v1, p0, Lcom/dawin/DawinVideoAd;->ap:I

    iput v3, p0, Lcom/dawin/DawinVideoAd;->aq:I

    iput v1, p0, Lcom/dawin/DawinVideoAd;->ar:I

    new-instance v0, Lcom/dawin/DawinVideoAd$1;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$1;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->as:Landroid/os/Handler;

    new-instance v0, Lcom/dawin/DawinVideoAd$12;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$12;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    new-instance v0, Lcom/dawin/DawinVideoAd$23;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$23;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->au:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/dawin/DawinVideoAd$26;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$26;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->av:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/dawin/DawinVideoAd$27;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$27;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->a:Lcom/dawin/http/a$a;

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->b()V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/dawin/DawinVideoAd;->b:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/dawin/DawinVideoAd;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    iput-object v4, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iput v1, p0, Lcom/dawin/DawinVideoAd;->O:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->Q:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->R:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->U:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->V:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->W:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->aa:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ab:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ac:Z

    iput v1, p0, Lcom/dawin/DawinVideoAd;->ad:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ae:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->af:Z

    iput v2, p0, Lcom/dawin/DawinVideoAd;->ag:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->ah:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->ai:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->aj:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->am:Z

    iput-object v4, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ao:Z

    iput v1, p0, Lcom/dawin/DawinVideoAd;->ap:I

    iput v3, p0, Lcom/dawin/DawinVideoAd;->aq:I

    iput v1, p0, Lcom/dawin/DawinVideoAd;->ar:I

    new-instance v0, Lcom/dawin/DawinVideoAd$1;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$1;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->as:Landroid/os/Handler;

    new-instance v0, Lcom/dawin/DawinVideoAd$12;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$12;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    new-instance v0, Lcom/dawin/DawinVideoAd$23;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$23;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->au:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/dawin/DawinVideoAd$26;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$26;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->av:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/dawin/DawinVideoAd$27;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$27;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->a:Lcom/dawin/http/a$a;

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->b()V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/dawin/DawinVideoAd;->b:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/dawin/DawinVideoAd;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    iput-object v4, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iput v1, p0, Lcom/dawin/DawinVideoAd;->O:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->Q:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->R:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->U:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->V:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->W:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->aa:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ab:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ac:Z

    iput v1, p0, Lcom/dawin/DawinVideoAd;->ad:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ae:Z

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->af:Z

    iput v2, p0, Lcom/dawin/DawinVideoAd;->ag:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->ah:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->ai:I

    iput v2, p0, Lcom/dawin/DawinVideoAd;->aj:I

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->am:Z

    iput-object v4, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ao:Z

    iput v1, p0, Lcom/dawin/DawinVideoAd;->ap:I

    iput v3, p0, Lcom/dawin/DawinVideoAd;->aq:I

    iput v1, p0, Lcom/dawin/DawinVideoAd;->ar:I

    new-instance v0, Lcom/dawin/DawinVideoAd$1;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$1;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->as:Landroid/os/Handler;

    new-instance v0, Lcom/dawin/DawinVideoAd$12;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$12;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    new-instance v0, Lcom/dawin/DawinVideoAd$23;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$23;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->au:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/dawin/DawinVideoAd$26;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$26;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->av:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/dawin/DawinVideoAd$27;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$27;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->a:Lcom/dawin/http/a$a;

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->b()V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->e()V

    return-void
.end method

.method static synthetic A(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->y:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic B(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->z:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic C(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    return-object v0
.end method

.method static synthetic D(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    return-object v0
.end method

.method static synthetic E(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->c()V

    return-void
.end method

.method static synthetic F(Lcom/dawin/DawinVideoAd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->ab:Z

    return v0
.end method

.method static synthetic G(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->ad:I

    return v0
.end method

.method static synthetic H(Lcom/dawin/DawinVideoAd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->ac:Z

    return v0
.end method

.method static synthetic I(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic J(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->O:I

    return v0
.end method

.method static synthetic K(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->L:I

    return v0
.end method

.method static synthetic L(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->M:I

    return v0
.end method

.method static synthetic M(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->N:I

    return v0
.end method

.method static synthetic N(Lcom/dawin/DawinVideoAd;)Lcom/dawin/util/TickerAdBuilder$Ticker;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    return-object v0
.end method

.method static synthetic O(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->ap:I

    return v0
.end method

.method static synthetic P(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->u()I

    move-result v0

    return v0
.end method

.method static synthetic Q(Lcom/dawin/DawinVideoAd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->ao:Z

    return v0
.end method

.method static synthetic R(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic S(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->m()V

    return-void
.end method

.method static synthetic T(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic U(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->e:I

    return v0
.end method

.method static synthetic V(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->ag:I

    return v0
.end method

.method static synthetic W(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->ai:I

    return v0
.end method

.method static synthetic X(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->ah:I

    return v0
.end method

.method static synthetic Y(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->aj:I

    return v0
.end method

.method static synthetic Z(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->f()V

    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "mJson"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/dawin/util/CommonUtils;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "tManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->av:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->au:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .end local v0    # "tManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/dawin/DawinVideoAd;->aq:I

    goto :goto_0
.end method

.method private a(I)V
    .locals 7
    .param p1, "clickInfo"    # I

    .prologue
    const/16 v6, 0x7d0

    const/16 v5, 0x2bc

    const/16 v4, 0x1f4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Click : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/dawin/DawinVideoAd;->a(Z)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->g()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->i()V

    :cond_0
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->p()V

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iput-boolean v3, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/dawin/objects/AdInfos;->getClickThrough(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v1, "Action"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdClickThru(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v3, p0, Lcom/dawin/DawinVideoAd;->S:Z

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/dawin/objects/AdInfos;->getTrackingUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dawin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "A01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v1, "Action"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdClickThru(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-boolean v3, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0}, Lcom/dawin/objects/AdInfos;->getImpressionTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0}, Lcom/dawin/objects/AdInfos;->getImpressionTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v2, v4}, Lcom/dawin/objects/AdInfos;->getTrackingUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v4}, Lcom/dawin/objects/AdInfos;->getClickThrough(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1, v4}, Lcom/dawin/objects/AdInfos;->getTrackingUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dawin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "A01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    const/16 v1, 0x5dc

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getSkipTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&pt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->u()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&dawin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "A01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iput-boolean v3, p0, Lcom/dawin/DawinVideoAd;->S:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->U:Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v2, v5}, Lcom/dawin/objects/AdInfos;->getTrackingUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v5}, Lcom/dawin/objects/AdInfos;->getClickThrough(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->a(Ljava/lang/String;)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_1
        0x2bc -> :sswitch_4
        0x320 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/view/View;)V
    .locals 21
    .param p1, "v"    # Landroid/view/View;

    .prologue
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/dawin/objects/c;

    move-object/from16 v18, v0

    .local v18, "exButton":Lcom/dawin/objects/c;
    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->p()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/dawin/DawinVideoAd;->a(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->g()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->i()V

    :cond_0
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v1, v1, Lcom/dawin/objects/d;->c:I

    const/16 v2, 0x7530

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getSkipTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    const/16 v2, 0x5dc

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v8}, Lcom/dawin/objects/AdInfos;->getSkipTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&pt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->u()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&dawin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "A01"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    .end local v18    # "exButton":Lcom/dawin/objects/c;
    :goto_0
    return-void

    .restart local v18    # "exButton":Lcom/dawin/objects/c;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdSkiped(Ljava/lang/String;)V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto :goto_0

    .end local v18    # "exButton":Lcom/dawin/objects/c;
    :catch_0
    move-exception v1

    goto :goto_0

    .restart local v18    # "exButton":Lcom/dawin/objects/c;
    :cond_3
    const-string v16, ""

    .local v16, "clickType":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v1, v1, Lcom/dawin/objects/d;->c:I

    const/16 v2, 0x4e20

    if-ne v1, v2, :cond_9

    const-string v16, "Brand"

    :goto_1
    const-string v14, ""

    .local v14, "clickThrough":Ljava/lang/String;
    const-string v15, ""

    .local v15, "clickTracking":Ljava/lang/String;
    const-string v19, ""

    .local v19, "impression":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v1, v1, Lcom/dawin/objects/d;->c:I

    const/16 v2, 0x4e20

    if-ne v1, v2, :cond_a

    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v14, v1, Lcom/dawin/objects/d;->t:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v15, v1, Lcom/dawin/objects/d;->u:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v0, v1, Lcom/dawin/objects/d;->s:Ljava/lang/String;

    move-object/from16 v19, v0

    :cond_4
    :goto_2
    if-eqz v14, :cond_d

    const-string v1, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/dawin/DawinVideoAd;->S:Z

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v1, v0, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdClickThru(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v15, :cond_7

    const-string v1, ""

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    const/16 v2, 0x7d0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->u()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&dawin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "A01"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_7
    if-eqz v19, :cond_8

    const-string v1, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    const/16 v2, 0x7d0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&pt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->u()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&dawin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "A01"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/dawin/DawinVideoAd;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v14    # "clickThrough":Ljava/lang/String;
    .end local v15    # "clickTracking":Ljava/lang/String;
    .end local v19    # "impression":Ljava/lang/String;
    :cond_9
    const-string v16, "Action"

    goto/16 :goto_1

    .restart local v14    # "clickThrough":Ljava/lang/String;
    .restart local v15    # "clickTracking":Ljava/lang/String;
    .restart local v19    # "impression":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getVideoclickThrough()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getVideoClickTracking()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->r()V

    const-string/jumbo v1, "tel:"

    const-string v2, ""

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .local v6, "phoneNumber":Ljava/lang/String;
    move-object v4, v15

    .local v4, "dialogClickTracking":Ljava/lang/String;
    move-object/from16 v5, v19

    .local v5, "dialogImpression":Ljava/lang/String;
    move-object/from16 v3, v16

    .local v3, "dialogClickType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dawin/DawinVideoAd;->aq:I

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const/4 v8, 0x0

    const-string/jumbo v10, "\ucde8\uc18c"

    const-string/jumbo v11, "\ud1b5\ud654"

    new-instance v12, Lcom/dawin/DawinVideoAd$14;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/dawin/DawinVideoAd$14;-><init>(Lcom/dawin/DawinVideoAd;)V

    new-instance v1, Lcom/dawin/DawinVideoAd$15;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/dawin/DawinVideoAd$15;-><init>(Lcom/dawin/DawinVideoAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v6

    move-object v13, v1

    invoke-static/range {v7 .. v13}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v17

    .local v17, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/dawin/DawinVideoAd$16;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/dawin/DawinVideoAd$16;-><init>(Lcom/dawin/DawinVideoAd;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    const v1, 0x102000b

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .local v20, "msg":Landroid/widget/TextView;
    const/16 v1, 0x11

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    .end local v17    # "dialog":Landroid/app/AlertDialog;
    .end local v20    # "msg":Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const/4 v8, 0x0

    const-string/jumbo v9, "\uc804\ud654 \uae30\ub2a5\uc744 \uc774\uc6a9\ud560 \uc218 \uc5c6\ub294 \uc0c1\ud0dc\uc785\ub2c8\ub2e4."

    const-string/jumbo v10, "\ud655\uc778"

    const/4 v11, 0x0

    new-instance v12, Lcom/dawin/DawinVideoAd$17;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/dawin/DawinVideoAd$17;-><init>(Lcom/dawin/DawinVideoAd;)V

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v17

    .restart local v17    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    const v1, 0x102000b

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .restart local v20    # "msg":Landroid/widget/TextView;
    const/16 v1, 0x11

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    .end local v3    # "dialogClickType":Ljava/lang/String;
    .end local v4    # "dialogClickTracking":Ljava/lang/String;
    .end local v5    # "dialogImpression":Ljava/lang/String;
    .end local v6    # "phoneNumber":Ljava/lang/String;
    .end local v17    # "dialog":Landroid/app/AlertDialog;
    .end local v20    # "msg":Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdStoped(Ljava/lang/String;)V

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->aq:I

    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dawin/DawinVideoAd;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Lcom/dawin/objects/AdInfos;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Lcom/dawin/util/TickerAdBuilder$Ticker;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dawin/DawinVideoAd;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Ljava/util/ArrayList;Lcom/dawin/objects/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dawin/DawinVideoAd;->a(Ljava/util/ArrayList;Lcom/dawin/objects/b;)V

    return-void
.end method

.method static synthetic a(Lcom/dawin/DawinVideoAd;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->ac:Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/http/parser/AdditionalInfoParser$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dawin/http/parser/AdditionalInfoParser$a;>;"
    const/16 v4, 0x8

    const/4 v3, -0x2

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    new-instance v2, Lcom/dawin/DawinVideoAd$5;

    invoke-direct {v2, p0}, Lcom/dawin/DawinVideoAd$5;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    new-instance v2, Lcom/dawin/DawinVideoAd$6;

    invoke-direct {v2, p0}, Lcom/dawin/DawinVideoAd$6;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "tickerButtonParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/dawin/objects/b;)V
    .locals 9
    .param p2, "mExtensionBitmap"    # Lcom/dawin/objects/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/objects/d;",
            ">;",
            "Lcom/dawin/objects/b;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "mExtensionInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dawin/objects/d;>;"
    const/16 v8, 0x8

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dawin/objects/d;

    .local v0, "ex":Lcom/dawin/objects/d;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Extension Button : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/dawin/objects/d;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/dawin/objects/d;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/dawin/objects/d;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget v3, v0, Lcom/dawin/objects/d;->c:I

    sparse-switch v3, :sswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    new-instance v3, Lcom/dawin/objects/c;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/dawin/objects/c;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, p2, v4}, Lcom/dawin/objects/c;->a(Lcom/dawin/objects/d;Lcom/dawin/objects/b;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    new-instance v4, Lcom/dawin/DawinVideoAd$18;

    invoke-direct {v4, p0}, Lcom/dawin/DawinVideoAd$18;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v3, v4}, Lcom/dawin/objects/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/dawin/objects/c;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    invoke-virtual {v3, v8}, Lcom/dawin/objects/c;->setVisibility(I)V

    goto :goto_1

    :sswitch_1
    new-instance v3, Lcom/dawin/objects/c;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/dawin/objects/c;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, p2, v4}, Lcom/dawin/objects/c;->a(Lcom/dawin/objects/d;Lcom/dawin/objects/b;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/dawin/objects/c;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    invoke-virtual {v3, v8}, Lcom/dawin/objects/c;->setVisibility(I)V

    goto :goto_1

    :sswitch_2
    new-instance v3, Lcom/dawin/objects/c;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/dawin/objects/c;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, p2, v4}, Lcom/dawin/objects/c;->a(Lcom/dawin/objects/d;Lcom/dawin/objects/b;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/dawin/objects/c;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    new-instance v4, Lcom/dawin/DawinVideoAd$19;

    invoke-direct {v4, p0}, Lcom/dawin/DawinVideoAd$19;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v3, v4}, Lcom/dawin/objects/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    invoke-virtual {v3, v8}, Lcom/dawin/objects/c;->setVisibility(I)V

    goto/16 :goto_1

    :sswitch_3
    new-instance v3, Lcom/dawin/objects/c;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/dawin/objects/c;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, p2, v4}, Lcom/dawin/objects/c;->a(Lcom/dawin/objects/d;Lcom/dawin/objects/b;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/dawin/objects/c;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    invoke-virtual {v3, v8}, Lcom/dawin/objects/c;->setVisibility(I)V

    goto/16 :goto_1

    :sswitch_4
    new-instance v1, Lcom/dawin/objects/c;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/dawin/objects/c;-><init>(Landroid/content/Context;)V

    .local v1, "exButton":Lcom/dawin/objects/c;
    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, p2, v3}, Lcom/dawin/objects/c;->a(Lcom/dawin/objects/d;Lcom/dawin/objects/b;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/dawin/objects/c;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v0, Lcom/dawin/objects/d;->c:I

    const/16 v4, 0x4e20

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/dawin/DawinVideoAd$20;

    invoke-direct {v3, p0}, Lcom/dawin/DawinVideoAd$20;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v1, v3}, Lcom/dawin/objects/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Lcom/dawin/objects/c;->setVisibility(I)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_2
        0x2713 -> :sswitch_2
        0x4e20 -> :sswitch_4
        0x7530 -> :sswitch_0
        0x9c40 -> :sswitch_1
        0xc350 -> :sswitch_3
        0x1869f -> :sswitch_4
    .end sparse-switch
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isClickable"    # Z

    .prologue
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :cond_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->r:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->r:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->p:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->p:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_3
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->q:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->q:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_4
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->s:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->s:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_5
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_6
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_7
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    invoke-virtual {v1, p1}, Lcom/dawin/objects/c;->setClickable(Z)V

    :cond_8
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    invoke-virtual {v1, p1}, Lcom/dawin/objects/c;->setClickable(Z)V

    :cond_9
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .end local v0    # "i":I
    :cond_a
    return-void

    .restart local v0    # "i":I
    :cond_b
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/objects/c;

    iget-object v1, v1, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v1, v1, Lcom/dawin/objects/d;->c:I

    const/16 v2, 0x4e20

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/objects/c;

    invoke-virtual {v1, p1}, Lcom/dawin/objects/c;->setClickable(Z)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->U:Z

    const-string v3, "market://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "google market app!!"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/dawin/util/CommonUtils;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/dawin/util/CommonUtils;->a(Landroid/net/Uri;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdStoped(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->U:Z

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string/jumbo v3, "\uc571 \ub2e4\uc6b4\ub85c\ub4dc \uc624\ub958"

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const-string v0, "DawinSDK"

    const-string v1, "Dawin 3.0 SDK Ver : 1.0.6 | Date : 20170816"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dawin/DawinVideoAd;->setWillNotDraw(Z)V

    new-instance v0, Lcom/dawin/util/i;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dawin/util/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/i;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/dawin/util/CommonUtils;->g(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->a()V

    new-instance v0, Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dawin/util/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->K:Lcom/dawin/util/d;

    new-instance v0, Lcom/dawin/http/a;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dawin/http/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->a:Lcom/dawin/http/a$a;

    invoke-virtual {v0, v1}, Lcom/dawin/http/a;->a(Lcom/dawin/http/a$a;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dawin/objects/a;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/dawin/util/CommonUtils;->c(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/dawin/objects/a;-><init>(I)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    return-void
.end method

.method private b(I)V
    .locals 9
    .param p1, "actionMode"    # I

    .prologue
    const/16 v8, 0x2bc

    const/16 v7, 0x258

    const/16 v6, 0x191

    const/16 v5, 0x190

    const/16 v4, 0x1f4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v5}, Lcom/dawin/objects/AdInfos;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v5}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v5}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->K:Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1, v5}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dawin/util/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v6}, Lcom/dawin/objects/AdInfos;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v6}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v6}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->K:Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1, v6}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->o:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/dawin/util/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->K:Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    const/16 v2, 0x320

    invoke-virtual {v1, v2}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->p:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    const/16 v4, 0x320

    invoke-virtual {v3, v4}, Lcom/dawin/objects/AdInfos;->isIconShowDirectly(I)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dawin/util/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    goto/16 :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v8}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v8}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->K:Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1, v8}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->s:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3, v8}, Lcom/dawin/objects/AdInfos;->isIconShowDirectly(I)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dawin/util/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    goto/16 :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v4}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v4}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->K:Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1, v4}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->r:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3, v4}, Lcom/dawin/objects/AdInfos;->isIconShowDirectly(I)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dawin/util/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->K:Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1, v4}, Lcom/dawin/objects/AdInfos;->getIconBase64String(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->r:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3, v4}, Lcom/dawin/objects/AdInfos;->isIconShowDirectly(I)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dawin/util/d;->b(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    goto/16 :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v7}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v0, v7}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->K:Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1, v7}, Lcom/dawin/objects/AdInfos;->getIconUrl(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->q:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3, v7}, Lcom/dawin/objects/AdInfos;->isIconShowDirectly(I)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dawin/util/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->K:Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1, v5}, Lcom/dawin/objects/AdInfos;->getIconBase64String(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dawin/util/d;->b(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->K:Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v1, v6}, Lcom/dawin/objects/AdInfos;->getIconBase64String(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->o:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/dawin/util/d;->b(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2af8 -> :sswitch_2
        0x2ee0 -> :sswitch_3
        0x32c8 -> :sswitch_1
        0x36b0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic b(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->ar:I

    return-void
.end method

.method static synthetic b(Lcom/dawin/DawinVideoAd;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dawin/DawinVideoAd;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b(Lcom/dawin/DawinVideoAd;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->ab:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->U:Z

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/dawin/util/CommonUtils;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/dawin/util/CommonUtils;->a(Landroid/net/Uri;Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdStoped(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/http/parser/AdditionalInfoParser$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dawin/http/parser/AdditionalInfoParser$a;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "tickerUrl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v0, Lcom/dawin/util/d;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/dawin/util/d;-><init>(Landroid/content/Context;)V

    .local v0, "downloader":Lcom/dawin/util/d;
    new-instance v3, Lcom/dawin/DawinVideoAd$11;

    invoke-direct {v3, p0}, Lcom/dawin/DawinVideoAd$11;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v0, v3}, Lcom/dawin/util/d;->a(Lcom/dawin/util/d$a;)V

    invoke-virtual {v0, v2}, Lcom/dawin/util/d;->a(Ljava/util/ArrayList;)I

    .end local v0    # "downloader":Lcom/dawin/util/d;
    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dawin/http/parser/AdditionalInfoParser$a;

    invoke-virtual {v3}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 20

    .prologue
    const-string/jumbo v18, "setVideoLayoutParam()"

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/dawin/a/a;->m()Lcom/dawin/util/CommonUtils$ScreenSize;

    move-result-object v13

    .local v13, "size":Lcom/dawin/util/CommonUtils$ScreenSize;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "setVideoLayoutParam() - size.getWidth() = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / size.getHeight() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v18

    if-lez v18, :cond_5

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v18

    if-lez v18, :cond_5

    const/4 v10, -0x1

    .local v10, "parentWidth":I
    const/4 v9, -0x1

    .local v9, "parentHeight":I
    const/4 v15, -0x1

    .local v15, "topMargin":I
    const/4 v3, -0x1

    .local v3, "bottomMargin":I
    const/4 v5, -0x1

    .local v5, "leftMargin":I
    const/4 v12, -0x1

    .local v12, "rightMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dawin/DawinVideoAd;->e:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/dawin/DawinVideoAd;->ai:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/dawin/DawinVideoAd;->aj:I

    :goto_0
    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v18

    move/from16 v0, v18

    if-ne v10, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    const-string/jumbo v18, "parent width same as video width. hide left, right view."

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v18

    move/from16 v0, v18

    if-ne v9, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    const-string/jumbo v18, "parent height same as video height. hide top, bottom view."

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->A:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .local v16, "videoBottomParam":Landroid/widget/LinearLayout$LayoutParams;
    const-string v18, "####################################################################################"

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "BEFORE  Bottom layout width : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", height : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "SET Bottom layout width : -1, height : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    const-string v18, "####################################################################################"

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v7, "newVideoBottomParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v18, 0x11

    move/from16 v0, v18

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->A:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->A:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .local v8, "param":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "BEFORE video layout width : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", height : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "AFTER  video layout width : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", height : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    const-string v18, "####################################################################################"

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v18

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v17, "videoLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v3    # "bottomMargin":I
    .end local v5    # "leftMargin":I
    .end local v7    # "newVideoBottomParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "param":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "parentHeight":I
    .end local v10    # "parentWidth":I
    .end local v12    # "rightMargin":I
    .end local v13    # "size":Lcom/dawin/util/CommonUtils$ScreenSize;
    .end local v15    # "topMargin":I
    .end local v16    # "videoBottomParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "videoLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    return-void

    .restart local v3    # "bottomMargin":I
    .restart local v5    # "leftMargin":I
    .restart local v9    # "parentHeight":I
    .restart local v10    # "parentWidth":I
    .restart local v12    # "rightMargin":I
    .restart local v13    # "size":Lcom/dawin/util/CommonUtils$ScreenSize;
    .restart local v15    # "topMargin":I
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/dawin/DawinVideoAd;->ag:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/dawin/DawinVideoAd;->ah:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v18

    sub-int v6, v10, v18

    .local v6, "margin":I
    div-int/lit8 v5, v6, 0x2

    sub-int v12, v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .local v4, "leftLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .local v11, "rightLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "parent width : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", video width : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", left margin : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", right margin : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v4    # "leftLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "margin":I
    .end local v11    # "rightLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v18

    sub-int v6, v9, v18

    .restart local v6    # "margin":I
    div-int/lit8 v15, v6, 0x2

    sub-int v3, v6, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .local v14, "topLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .local v2, "bottomLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_10
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "parent height : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", video Height : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", top margin : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", bottom margin : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->b:I

    return-void
.end method

.method static synthetic c(Lcom/dawin/DawinVideoAd;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->aa:Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 12
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const v11, 0x102000b

    const/16 v10, 0x11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string/jumbo v1, "\uae30\ud0c0 \uc624\ub958"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    const/16 v3, 0x320

    invoke-virtual {v2, v3}, Lcom/dawin/objects/AdInfos;->getTrackingUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "callTracking":Ljava/lang/String;
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->q()V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    iget v0, p0, Lcom/dawin/DawinVideoAd;->aq:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const-string/jumbo v3, "\ucde8\uc18c"

    const-string/jumbo v4, "\ud1b5\ud654"

    new-instance v5, Lcom/dawin/DawinVideoAd$21;

    invoke-direct {v5, p0}, Lcom/dawin/DawinVideoAd$21;-><init>(Lcom/dawin/DawinVideoAd;)V

    new-instance v6, Lcom/dawin/DawinVideoAd$22;

    invoke-direct {v6, p0, v7, p1}, Lcom/dawin/DawinVideoAd$22;-><init>(Lcom/dawin/DawinVideoAd;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v8

    .local v8, "dialog":Landroid/app/AlertDialog;
    new-instance v0, Lcom/dawin/DawinVideoAd$24;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$24;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .local v9, "msg":Landroid/widget/TextView;
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .end local v8    # "dialog":Landroid/app/AlertDialog;
    .end local v9    # "msg":Landroid/widget/TextView;
    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const-string/jumbo v2, "\uc804\ud654 \uae30\ub2a5\uc744 \uc774\uc6a9\ud560 \uc218 \uc5c6\ub294 \uc0c1\ud0dc\uc785\ub2c8\ub2e4."

    const-string/jumbo v3, "\ud655\uc778"

    new-instance v5, Lcom/dawin/DawinVideoAd$25;

    invoke-direct {v5, p0}, Lcom/dawin/DawinVideoAd$25;-><init>(Lcom/dawin/DawinVideoAd;)V

    move-object v4, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v8

    .restart local v8    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .restart local v9    # "msg":Landroid/widget/TextView;
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v0}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v0}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v0}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/dawin/DawinVideoAd;->ap:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dawin/DawinVideoAd;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    iget v2, p0, Lcom/dawin/DawinVideoAd;->ap:I

    iget v3, p0, Lcom/dawin/DawinVideoAd;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    iget v2, p0, Lcom/dawin/DawinVideoAd;->ap:I

    iget v3, p0, Lcom/dawin/DawinVideoAd;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    return-void
.end method

.method static synthetic d(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dawin/DawinVideoAd;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/dawin/DawinVideoAd;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->S:Z

    return-void
.end method

.method static synthetic e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    return-object v0
.end method

.method private e()V
    .locals 12

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v11, 0x11

    const/4 v7, -0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v2, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v5, "#000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v3, "mainParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v4, "videoLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v1, "emptyAreaParamTB":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v0, "emptyAreaParamLR":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-nez v5, :cond_0

    new-instance v5, Lcom/dawin/a/a;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/dawin/a/a;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    :cond_0
    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    new-instance v6, Lcom/dawin/DawinVideoAd$28;

    invoke-direct {v6, p0}, Lcom/dawin/DawinVideoAd$28;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v5, v6}, Lcom/dawin/a/a;->a(Lcom/dawin/a/a$b;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->w:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->x:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->y:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->z:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->g()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->w:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->x:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->y:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->z:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->f()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->p:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->p:Landroid/widget/ImageButton;

    new-instance v6, Lcom/dawin/DawinVideoAd$29;

    invoke-direct {v6, p0}, Lcom/dawin/DawinVideoAd$29;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->q:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->q:Landroid/widget/ImageButton;

    new-instance v6, Lcom/dawin/DawinVideoAd$30;

    invoke-direct {v6, p0}, Lcom/dawin/DawinVideoAd$30;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->r:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->r:Landroid/widget/ImageButton;

    new-instance v6, Lcom/dawin/DawinVideoAd$31;

    invoke-direct {v6, p0}, Lcom/dawin/DawinVideoAd$31;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->s:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->s:Landroid/widget/ImageButton;

    new-instance v6, Lcom/dawin/DawinVideoAd$2;

    invoke-direct {v6, p0}, Lcom/dawin/DawinVideoAd$2;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->w:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->p:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->x:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->s:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->y:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->q:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->r:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    new-instance v6, Lcom/dawin/DawinVideoAd$3;

    invoke-direct {v6, p0}, Lcom/dawin/DawinVideoAd$3;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->o:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->o:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->s:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->q:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->p:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->r:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->z:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->z:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->o:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->c()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v5, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const/4 v7, 0x0

    const v8, 0x1010077

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->I:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->I:Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/dawin/DawinVideoAd;->T:Lcom/dawin/objects/a;

    invoke-virtual {v7}, Lcom/dawin/objects/a;->d()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/dawin/DawinVideoAd;->A:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->A:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->A:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->A:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/dawin/DawinVideoAd;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2, v3}, Lcom/dawin/DawinVideoAd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic e(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dawin/DawinVideoAd;->a(I)V

    return-void
.end method

.method static synthetic e(Lcom/dawin/DawinVideoAd;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->R:Z

    return-void
.end method

.method static synthetic f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->al:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    new-instance v0, Lcom/dawin/DawinVideoAd$4;

    invoke-direct {v0, p0}, Lcom/dawin/DawinVideoAd$4;-><init>(Lcom/dawin/DawinVideoAd;)V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->al:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->O:I

    return-void
.end method

.method static synthetic f(Lcom/dawin/DawinVideoAd;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->Q:Z

    return-void
.end method

.method static synthetic g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->am:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->am:Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->al:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->al:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->al:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->e:I

    return-void
.end method

.method static synthetic g(Lcom/dawin/DawinVideoAd;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dawin/DawinVideoAd;->U:Z

    return-void
.end method

.method static synthetic h(Lcom/dawin/DawinVideoAd;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private h()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->al:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->am:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->am:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->ak:Ljava/util/Timer;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->al:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->ad:I

    return-void
.end method

.method static synthetic i(Lcom/dawin/DawinVideoAd;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->o:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&lq="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dawin/DawinVideoAd;->O:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->aa:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method static synthetic i(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->L:I

    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v1, "handleTickerView"

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v1}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v1}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/dawin/DawinVideoAd;->ap:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v1}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/dawin/DawinVideoAd;->ap:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dawin/util/TickerAdBuilder$a;

    .local v0, "info":Lcom/dawin/util/TickerAdBuilder$a;
    iget-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ao:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->k()V

    .end local v0    # "info":Lcom/dawin/util/TickerAdBuilder$a;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "info":Lcom/dawin/util/TickerAdBuilder$a;
    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/dawin/util/TickerAdBuilder$a;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/dawin/util/TickerAdBuilder$a;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    iget v3, p0, Lcom/dawin/DawinVideoAd;->ap:I

    invoke-virtual {v2, v3, v5}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    iget v3, p0, Lcom/dawin/DawinVideoAd;->ap:I

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->refreshDrawableState()V

    :cond_6
    :goto_1
    iput-boolean v5, p0, Lcom/dawin/DawinVideoAd;->ao:Z

    const-string v1, "ShowTicker!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! in HandleTickerView"

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->refreshDrawableState()V

    goto :goto_1
.end method

.method static synthetic j(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->M:I

    return-void
.end method

.method static synthetic j(Lcom/dawin/DawinVideoAd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->S:Z

    return v0
.end method

.method private k()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->j()V

    return-void
.end method

.method static synthetic k(Lcom/dawin/DawinVideoAd;I)V
    .locals 0

    iput p1, p0, Lcom/dawin/DawinVideoAd;->N:I

    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->ao:Z

    iget v0, p0, Lcom/dawin/DawinVideoAd;->ap:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dawin/DawinVideoAd;->ap:I

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v0}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dawin/DawinVideoAd;->ap:I

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v1}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->s()V

    :cond_2
    return-void
.end method

.method static synthetic l(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->l()V

    return-void
.end method

.method private m()V
    .locals 18

    .prologue
    const-string v1, "handle Ticker click!!"

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->d()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->i()V

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/dawin/DawinVideoAd;->a(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->g()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/dawin/DawinVideoAd;->ao:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v1}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v1}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dawin/DawinVideoAd;->ap:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v1}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dawin/DawinVideoAd;->ap:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/dawin/util/TickerAdBuilder$a;

    .local v13, "info":Lcom/dawin/util/TickerAdBuilder$a;
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/dawin/util/TickerAdBuilder$a;->b()Ljava/lang/String;

    move-result-object v15

    .local v15, "program":Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/dawin/DawinVideoAd;->W:Z

    const-string v1, "download"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v2, "Brand"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdClickThru(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    const/16 v2, 0x7d0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/dawin/util/TickerAdBuilder$a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&pt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->u()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&dawin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "A01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    invoke-virtual {v13}, Lcom/dawin/util/TickerAdBuilder$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/dawin/DawinVideoAd;->a(Ljava/lang/String;)Z

    .end local v13    # "info":Lcom/dawin/util/TickerAdBuilder$a;
    .end local v15    # "program":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v13    # "info":Lcom/dawin/util/TickerAdBuilder$a;
    .restart local v15    # "program":Ljava/lang/String;
    :cond_2
    const-string v1, "call"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v13}, Lcom/dawin/util/TickerAdBuilder$a;->f()Ljava/lang/String;

    move-result-object v3

    .local v3, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dawin/DawinVideoAd;->aq:I

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const/4 v2, 0x0

    const-string/jumbo v4, "\ucde8\uc18c"

    const-string/jumbo v5, "\ud1b5\ud654"

    new-instance v6, Lcom/dawin/DawinVideoAd$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/dawin/DawinVideoAd$7;-><init>(Lcom/dawin/DawinVideoAd;)V

    new-instance v7, Lcom/dawin/DawinVideoAd$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v13, v3}, Lcom/dawin/DawinVideoAd$8;-><init>(Lcom/dawin/DawinVideoAd;Lcom/dawin/util/TickerAdBuilder$a;Ljava/lang/String;)V

    invoke-static/range {v1 .. v7}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v11

    .local v11, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/dawin/DawinVideoAd$9;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/dawin/DawinVideoAd$9;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    const v1, 0x102000b

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .local v14, "msg":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .end local v11    # "dialog":Landroid/app/AlertDialog;
    .end local v14    # "msg":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    const/4 v5, 0x0

    const-string/jumbo v6, "\uc804\ud654 \uae30\ub2a5\uc744 \uc774\uc6a9\ud560 \uc218 \uc5c6\ub294 \uc0c1\ud0dc\uc785\ub2c8\ub2e4."

    const-string/jumbo v7, "\ud655\uc778"

    const/4 v8, 0x0

    new-instance v9, Lcom/dawin/DawinVideoAd$10;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/dawin/DawinVideoAd$10;-><init>(Lcom/dawin/DawinVideoAd;)V

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v11

    .restart local v11    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    const v1, 0x102000b

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .restart local v14    # "msg":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .end local v3    # "phoneNumber":Ljava/lang/String;
    .end local v11    # "dialog":Landroid/app/AlertDialog;
    .end local v14    # "msg":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v2, "Brand"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdClickThru(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/dawin/util/TickerAdBuilder$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, "tickerBtnUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/dawin/util/CommonUtils;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/dawin/util/CommonUtils;->a(Landroid/net/Uri;Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdStoped(Ljava/lang/String;)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto/16 :goto_0

    :cond_7
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, "i":Landroid/content/Intent;
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .local v17, "u":Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v12    # "i":Landroid/content/Intent;
    .end local v15    # "program":Ljava/lang/String;
    .end local v16    # "tickerBtnUrl":Ljava/lang/String;
    .end local v17    # "u":Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string/jumbo v2, "\uae30\ud0c0 \uc624\ub958"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto/16 :goto_0

    .end local v13    # "info":Lcom/dawin/util/TickerAdBuilder$a;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string/jumbo v2, "\uae30\ud0c0 \uc624\ub958"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto/16 :goto_0
.end method

.method static synthetic m(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->t()V

    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    const/16 v2, 0xbb8

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/i;

    invoke-virtual {v1}, Lcom/dawin/util/i;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/dawin/util/CommonUtils;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/i;

    invoke-virtual {v1}, Lcom/dawin/util/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    const-string v1, ""

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    const/16 v2, 0x6a4

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/i;

    invoke-virtual {v4}, Lcom/dawin/util/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&dawin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "A01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string/jumbo v2, "\uc778\ud130\ub137 \uc5f0\uacb0 \ud37c\ubbf8\uc158 \uc624\ub958"

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto :goto_1
.end method

.method static synthetic n(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->p()V

    return-void
.end method

.method private o()V
    .locals 6

    .prologue
    const-string/jumbo v2, "prepareVideo"

    invoke-static {v2}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string/jumbo v3, "\uae30\ud0c0 \uc624\ub958"

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/dawin/DawinVideoAd;->setVisibility(I)V

    new-instance v2, Landroid/widget/MediaController;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dawin/DawinVideoAd;->P:Landroid/widget/MediaController;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->P:Landroid/widget/MediaController;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/dawin/a/a;->setVisibility(I)V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string/jumbo v3, "\uae30\ud0c0 \uc624\ub958"

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string/jumbo v3, "\uae30\ud0c0 \uc624\ub958"

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dawin/a/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v2}, Lcom/dawin/a/a;->requestFocus()Z

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->as:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x67

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->as:Landroid/os/Handler;

    iget v3, p0, Lcom/dawin/DawinVideoAd;->c:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    new-instance v3, Lcom/dawin/DawinVideoAd$13;

    invoke-direct {v3, p0}, Lcom/dawin/DawinVideoAd$13;-><init>(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {v2, v3}, Lcom/dawin/a/a;->a(Lcom/dawin/a/a$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic o(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->n()V

    return-void
.end method

.method static synthetic p(Lcom/dawin/DawinVideoAd;)I
    .locals 1

    iget v0, p0, Lcom/dawin/DawinVideoAd;->ar:I

    return v0
.end method

.method private p()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v2}, Lcom/dawin/DawinVideoAd;->a(Z)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->I:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->a(Z)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->I:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->I:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const/16 v3, 0x67

    const/4 v2, 0x0

    const-string v0, "InitializeVideoView!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->as:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->s()V

    invoke-direct {p0, v2}, Lcom/dawin/DawinVideoAd;->a(Z)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->g()V

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->U:Z

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->V:Z

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->W:Z

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->ae:Z

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->af:Z

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->b()V

    :cond_0
    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->ao:Z

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->Q:Z

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->R:Z

    iput-boolean v2, p0, Lcom/dawin/DawinVideoAd;->ac:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    return-void
.end method

.method static synthetic r(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->q()V

    return-void
.end method

.method static synthetic s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    return-object v0
.end method

.method private s()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v3, "initializeTicker()"

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v3}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v3}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    .end local v1    # "i":I
    :cond_0
    iput-boolean v5, p0, Lcom/dawin/DawinVideoAd;->ao:Z

    iput v5, p0, Lcom/dawin/DawinVideoAd;->ap:I

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    return-void

    .restart local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    invoke-virtual {v3}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dawin/util/TickerAdBuilder$a;

    .local v2, "info":Lcom/dawin/util/TickerAdBuilder$a;
    invoke-virtual {v2}, Lcom/dawin/util/TickerAdBuilder$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " bitmap recycled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic t(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->as:Landroid/os/Handler;

    return-object v0
.end method

.method private t()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v1, "-------- Reset views state"

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->w:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->x:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->y:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->z:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->o:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->o:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->s:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->s:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->q:Landroid/widget/ImageButton;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->q:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->p:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->p:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_9
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->r:Landroid/widget/ImageButton;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->r:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_a
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->I:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_b
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1, v3}, Lcom/dawin/a/a;->setVisibility(I)V

    :cond_c
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_d
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->u:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_e
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    invoke-virtual {v1, v3}, Lcom/dawin/objects/c;->setVisibility(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    invoke-virtual {p0, v1}, Lcom/dawin/DawinVideoAd;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    :cond_f
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    invoke-virtual {v1, v3}, Lcom/dawin/objects/c;->setVisibility(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    invoke-virtual {p0, v1}, Lcom/dawin/DawinVideoAd;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    :cond_10
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    invoke-virtual {v1, v3}, Lcom/dawin/objects/c;->setVisibility(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    invoke-virtual {p0, v1}, Lcom/dawin/DawinVideoAd;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    :cond_11
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    invoke-virtual {v1, v3}, Lcom/dawin/objects/c;->setVisibility(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    invoke-virtual {p0, v1}, Lcom/dawin/DawinVideoAd;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    :cond_12
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_14

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .end local v0    # "i":I
    :cond_13
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/dawin/DawinVideoAd;->setVisibility(I)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->q()V

    invoke-virtual {p0}, Lcom/dawin/DawinVideoAd;->invalidate()V

    return-void

    .restart local v0    # "i":I
    :cond_14
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/objects/c;

    invoke-virtual {v1, v3}, Lcom/dawin/objects/c;->setVisibility(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/dawin/DawinVideoAd;->removeView(Landroid/view/View;)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private u()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic u(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->h()V

    return-void
.end method

.method static synthetic v(Lcom/dawin/DawinVideoAd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->R:Z

    return v0
.end method

.method static synthetic w(Lcom/dawin/DawinVideoAd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->Q:Z

    return v0
.end method

.method static synthetic x(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->w:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic y(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic z(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->v:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public initAd(Ljava/lang/String;Lcom/dawin/DawinVideoAd$DawinVideoAdListener;)V
    .locals 13
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "dawinVideoAdListener"    # Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    .prologue
    iget v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    const/4 v11, 0x2

    if-eq v0, v11, :cond_0

    iget v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "DawinVideoAd Loading..."

    invoke-static {v0}, Lcom/dawin/util/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v8, "mJson":Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v11, 0x1

    if-ge v0, v11, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v11, "JSON \ud30c\uc2f1 \uc624\ub958"

    iget-object v12, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v11, v12}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v8    # "mJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .local v6, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v11, "JSON \ud30c\uc2f1 \uc624\ub958"

    iget-object v12, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v11, v12}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto :goto_0

    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v8    # "mJson":Lorg/json/JSONObject;
    :cond_5
    const-string v0, "adslotid"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "adslotid":Ljava/lang/String;
    const-string/jumbo v0, "userdata"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "userdata":Ljava/lang/String;
    const-string v0, "category"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "category":Ljava/lang/String;
    const-string v0, "age"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "age":Ljava/lang/String;
    const-string v0, "gender"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "gender":Ljava/lang/String;
    const-string/jumbo v0, "videotimeout"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "videotimeout"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dawin/DawinVideoAd;->c:I

    :goto_1
    const-string/jumbo v0, "resumetoplay"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "resumetoplay"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->ae:Z

    :goto_2
    const-string/jumbo v0, "skipdisplaystop"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "resumetoplay"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->af:Z

    :goto_3
    const-string/jumbo v0, "requesttimeout"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "videotimeout"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/dawin/http/c;->a(I)V

    :cond_6
    const-string/jumbo v0, "protocol"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protocol":Ljava/lang/String;
    const-string v0, "host"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "host":Ljava/lang/String;
    const-string/jumbo v0, "path"

    invoke-direct {p0, v8, v0}, Lcom/dawin/DawinVideoAd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "path":Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_7
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    const-string v11, "adslotid \uc624\ub958"

    iget-object v12, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v11, v12}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto/16 :goto_0

    .end local v7    # "host":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "protocol":Ljava/lang/String;
    :cond_9
    const/16 v0, 0x2710

    iput v0, p0, Lcom/dawin/DawinVideoAd;->c:I

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->ae:Z

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->af:Z

    goto :goto_3

    .restart local v7    # "host":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "protocol":Ljava/lang/String;
    :cond_c
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/i;

    invoke-virtual {v0, v10, v7, v9}, Lcom/dawin/util/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/i;

    invoke-virtual/range {v0 .. v5}, Lcom/dawin/util/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/dawin/DawinVideoAd;->b:I

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->n()V

    goto/16 :goto_0
.end method

.method public isDawinAdPlaying()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->S:Z

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->as:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->f:Lcom/dawin/util/i;

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->g()V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->i()V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->l()V

    :cond_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dawin/DawinVideoAd;->S:Z

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1}, Lcom/dawin/a/a;->a()V

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    :cond_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    invoke-virtual {v1}, Lcom/dawin/http/a;->a()V

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->H:Lcom/dawin/http/a;

    iput-object v3, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/dawin/DawinVideoAd;->S:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->B:Lcom/dawin/objects/c;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dawin/objects/c;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dawin/objects/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->C:Lcom/dawin/objects/c;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dawin/objects/c;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dawin/objects/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->E:Lcom/dawin/objects/c;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dawin/objects/c;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dawin/objects/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->D:Lcom/dawin/objects/c;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dawin/objects/c;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dawin/objects/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .end local v0    # "i":I
    :cond_4
    return-void

    .restart local v0    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/objects/c;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dawin/objects/c;

    iget-object v3, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dawin/objects/c;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dawin/objects/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->V:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->a(Z)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->as:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->g()V

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->S:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->d()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->l()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dawin/a/a;->a(Lcom/dawin/a/a$a;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const-string/jumbo v0, "onResume DawinVideoAd"

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->W:Z

    if-eqz v0, :cond_2

    const-string v0, "mIsTickerClicked"

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdStoped(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->U:Z

    if-eqz v0, :cond_4

    const-string v0, "mIsClickviewerShown"

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdStoped(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->V:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIsOnPauseCalled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ae:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dawin/DawinVideoAd;->af:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dawin/DawinVideoAd;->S:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ac:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->S:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->ae:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/dawin/DawinVideoAd;->af:Z

    iget-boolean v1, p0, Lcom/dawin/DawinVideoAd;->ac:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdStoped(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->j()V

    :cond_7
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->f()V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/DawinVideoAd;->V:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dawin/DawinVideoAd;->a(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->G:Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdStoped(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const-string v2, "====================on size changed============================="

    invoke-static {v2}, Lcom/dawin/util/f;->c(Ljava/lang/String;)V

    const/16 v2, 0xa00

    if-ne p1, v2, :cond_1

    const/16 v2, 0x3c0

    if-ne p2, v2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    const-string/jumbo v2, "onSizeChanged height fail"

    invoke-static {v2}, Lcom/dawin/util/f;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "w : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldh : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dawin/util/f;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v2, :cond_6

    if-eq p3, p1, :cond_6

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v5, :cond_4

    iput v5, p0, Lcom/dawin/DawinVideoAd;->e:I

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget v3, p0, Lcom/dawin/DawinVideoAd;->e:I

    invoke-virtual {v2, v3}, Lcom/dawin/a/a;->a(I)V

    iget v2, p0, Lcom/dawin/DawinVideoAd;->ag:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/dawin/DawinVideoAd;->ah:I

    if-ne v2, v4, :cond_2

    iput p1, p0, Lcom/dawin/DawinVideoAd;->ag:I

    iput p2, p0, Lcom/dawin/DawinVideoAd;->ah:I

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget v3, p0, Lcom/dawin/DawinVideoAd;->e:I

    invoke-virtual {v2, v3, p1, p2}, Lcom/dawin/a/a;->a(III)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->c()V

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->J:Lcom/dawin/objects/AdInfos;

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->isTickerAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    iget v3, p0, Lcom/dawin/DawinVideoAd;->e:I

    invoke-virtual {v2, v3}, Lcom/dawin/util/TickerAdBuilder$Ticker;->isReady(I)Z

    move-result v0

    .local v0, "isReady":Z
    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->an:Lcom/dawin/util/TickerAdBuilder$Ticker;

    iget v3, p0, Lcom/dawin/DawinVideoAd;->e:I

    new-instance v4, Lcom/dawin/util/CommonUtils$ScreenSize;

    invoke-direct {v4, p1, p2}, Lcom/dawin/util/CommonUtils$ScreenSize;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/dawin/util/TickerAdBuilder$Ticker;->setScreenSize(ILcom/dawin/util/CommonUtils$ScreenSize;)Z

    iget v2, p0, Lcom/dawin/DawinVideoAd;->e:I

    if-ne v2, v6, :cond_5

    if-nez v0, :cond_3

    const-string v2, "land not ready!! "

    invoke-static {v2}, Lcom/dawin/util/f;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->d()V

    .end local v0    # "isReady":Z
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/dawin/DawinVideoAd;->ao:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    iput v6, p0, Lcom/dawin/DawinVideoAd;->e:I

    iget-object v2, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    iget v3, p0, Lcom/dawin/DawinVideoAd;->e:I

    invoke-virtual {v2, v3}, Lcom/dawin/a/a;->a(I)V

    iget v2, p0, Lcom/dawin/DawinVideoAd;->ai:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/dawin/DawinVideoAd;->aj:I

    if-ne v2, v4, :cond_2

    iput p1, p0, Lcom/dawin/DawinVideoAd;->ai:I

    iput p2, p0, Lcom/dawin/DawinVideoAd;->aj:I

    goto :goto_1

    .restart local v0    # "isReady":Z
    :cond_5
    if-nez v0, :cond_3

    const-string/jumbo v2, "port not ready!! "

    invoke-static {v2}, Lcom/dawin/util/f;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->d()V

    goto :goto_2

    .end local v0    # "isReady":Z
    :cond_6
    const-string v2, "Wrong case!!! old width can not same as current width."

    invoke-static {v2}, Lcom/dawin/util/f;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_0

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v0, v1, v2

    .local v0, "vol":F
    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    invoke-virtual {v1, v0}, Lcom/dawin/a/a;->a(F)V

    .end local v0    # "vol":F
    :cond_0
    return-void
.end method

.method public startAd()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    iget v1, p0, Lcom/dawin/DawinVideoAd;->b:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dawin/a/a;->setVisibility(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/dawin/DawinVideoAd;->at:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->o()V

    :cond_1
    return-void
.end method

.method public stopAd()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/dawin/DawinVideoAd;->r()V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd;->m:Lcom/dawin/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dawin/a/a;->a(Lcom/dawin/a/a$a;)V

    :cond_0
    return-void
.end method
