.class public Ljava/security/spec/MGF1ParameterSpec;
.super Ljava/lang/Object;
.source "MGF1ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final SHA1:Ljava/security/spec/MGF1ParameterSpec;

.field public static final SHA256:Ljava/security/spec/MGF1ParameterSpec;

.field public static final SHA384:Ljava/security/spec/MGF1ParameterSpec;

.field public static final SHA512:Ljava/security/spec/MGF1ParameterSpec;


# instance fields
.field private mdName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-1"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 63
    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    .line 69
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-256"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 68
    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 74
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-384"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 73
    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    .line 79
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-512"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 78
    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "mdName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "digest algorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    return-object v0
.end method
