.class public Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
.super Ljava/lang/Object;
.source "BundleArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mateservice/common/BundleArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    .line 47
    return-void
.end method

.method public static get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public put(Ljava/lang/String;B)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 97
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 67
    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/os/IBinder;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/samsung/android/mateservice/common/BundleArgs$Builder;"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 117
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    return-object p0
.end method

.method public put(Ljava/lang/String;[B)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 102
    return-object p0
.end method

.method public put(Ljava/lang/String;[I)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 82
    return-object p0
.end method

.method public put(Ljava/lang/String;[J)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 72
    return-object p0
.end method

.method public put(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    return-object p0
.end method

.method public put(Ljava/lang/String;[Z)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 92
    return-object p0
.end method
