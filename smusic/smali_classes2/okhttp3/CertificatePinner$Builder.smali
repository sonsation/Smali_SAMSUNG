.class public final Lokhttp3/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final pins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field

.field private trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    .line 295
    return-void
.end method

.method constructor <init>(Lokhttp3/CertificatePinner;)V
    .locals 2
    .param p1, "certificatePinner"    # Lokhttp3/CertificatePinner;

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    .line 298
    iget-object v0, p0, Lokhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    invoke-static {p1}, Lokhttp3/CertificatePinner;->access$200(Lokhttp3/CertificatePinner;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    invoke-static {p1}, Lokhttp3/CertificatePinner;->access$300(Lokhttp3/CertificatePinner;)Lokhttp3/internal/tls/TrustRootIndex;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/CertificatePinner$Builder;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 300
    return-void
.end method

.method static synthetic access$000(Lokhttp3/CertificatePinner$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lokhttp3/CertificatePinner$Builder;

    .prologue
    .line 290
    iget-object v0, p0, Lokhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lokhttp3/CertificatePinner$Builder;)Lokhttp3/internal/tls/TrustRootIndex;
    .locals 1
    .param p0, "x0"    # Lokhttp3/CertificatePinner$Builder;

    .prologue
    .line 290
    iget-object v0, p0, Lokhttp3/CertificatePinner$Builder;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    return-object v0
.end method


# virtual methods
.method public build()Lokhttp3/CertificatePinner;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lokhttp3/CertificatePinner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/CertificatePinner;-><init>(Lokhttp3/CertificatePinner$Builder;Lokhttp3/CertificatePinner$1;)V

    return-object v0
.end method

.method public trustRootIndex(Lokhttp3/internal/tls/TrustRootIndex;)Lokhttp3/CertificatePinner$Builder;
    .locals 0
    .param p1, "trustRootIndex"    # Lokhttp3/internal/tls/TrustRootIndex;

    .prologue
    .line 303
    iput-object p1, p0, Lokhttp3/CertificatePinner$Builder;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 304
    return-object p0
.end method
