.class public Lsun/security/x509/ReasonFlags;
.super Ljava/lang/Object;
.source "ReasonFlags.java"


# static fields
.field public static final AA_COMPROMISE:Ljava/lang/String; = "aa_compromise"

.field public static final AFFILIATION_CHANGED:Ljava/lang/String; = "affiliation_changed"

.field public static final CA_COMPROMISE:Ljava/lang/String; = "ca_compromise"

.field public static final CERTIFICATE_HOLD:Ljava/lang/String; = "certificate_hold"

.field public static final CESSATION_OF_OPERATION:Ljava/lang/String; = "cessation_of_operation"

.field public static final KEY_COMPROMISE:Ljava/lang/String; = "key_compromise"

.field private static final NAMES:[Ljava/lang/String;

.field public static final PRIVILEGE_WITHDRAWN:Ljava/lang/String; = "privilege_withdrawn"

.field public static final SUPERSEDED:Ljava/lang/String; = "superseded"

.field public static final UNUSED:Ljava/lang/String; = "unused"


# instance fields
.field private bitString:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    const-string v1, "unused"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 74
    const-string v1, "key_compromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 75
    const-string v1, "ca_compromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 76
    const-string v1, "affiliation_changed"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 77
    const-string v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 78
    const-string v1, "cessation_of_operation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 79
    const-string v1, "certificate_hold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 80
    const-string v1, "privilege_withdrawn"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 81
    const-string v1, "aa_compromise"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 72
    sput-object v0, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lsun/security/util/BitArray;)V
    .locals 1
    .param p1, "reasons"    # Lsun/security/util/BitArray;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 141
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 2
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 153
    .local v0, "derVal":Lsun/security/util/DerValue;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 151
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 162
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "reasons"    # [B

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 123
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 0
    .param p1, "reasons"    # [Z

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 132
    return-void
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private static name2Index(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 86
    sget-object v1, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    return v0

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Name not recognized by ReasonFlags"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private set(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 111
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [Z

    .line 112
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    iget-object v2, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 113
    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 115
    .end local v0    # "tmp":[Z
    :cond_0
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    aput-boolean p2, v1, p1

    .line 108
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/ReasonFlags;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lsun/security/util/BitArray;

    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    invoke-direct {v0, v1}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 227
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p1}, Lsun/security/x509/ReasonFlags;->name2Index(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 237
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 238
    sget-object v2, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method public getFlags()[Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attribute must be of type Boolean."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 181
    .local v0, "val":Z
    invoke-static {p1}, Lsun/security/x509/ReasonFlags;->name2Index(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/ReasonFlags;->set(IZ)V

    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    const-string v1, "Reason Flags [\n"

    .line 205
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Unused\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Key Compromise\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  CA Compromise\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_2
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Affiliation_Changed\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_3
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Superseded\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_4
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Cessation Of Operation\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_5
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Certificate Hold\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_6
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Privilege Withdrawn\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_7
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  AA Compromise\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    :cond_8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method
