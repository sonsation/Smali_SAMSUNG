.class final Landroid/app/SystemServiceRegistry$81;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/media/midi/MidiManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 979
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/media/midi/MidiManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    const/4 v2, 0x0

    .line 982
    const-string/jumbo v1, "midi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 983
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 984
    return-object v2

    .line 986
    :cond_0
    new-instance v1, Landroid/media/midi/MidiManager;

    invoke-static {v0}, Landroid/media/midi/IMidiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/midi/MidiManager;-><init>(Landroid/media/midi/IMidiManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 981
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$81;->createService(Landroid/app/ContextImpl;)Landroid/media/midi/MidiManager;

    move-result-object v0

    return-object v0
.end method
