.class final Lcom/android/server/display/DisplayManagerService$BinderService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "x1"    # Lcom/android/server/display/DisplayManagerService$1;

    .prologue
    .line 1137
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method

.method private canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z
    .locals 4
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .prologue
    const/4 v1, 0x1

    .line 1460
    if-eqz p1, :cond_1

    .line 1462
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return v1

    .line 1465
    :catch_0
    move-exception v0

    .line 1466
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DisplayManagerService"

    const-string v3, "Unable to query projection service for permissions"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1469
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private canProjectVideo(Landroid/media/projection/IMediaProjection;)Z
    .locals 4
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .prologue
    const/4 v1, 0x1

    .line 1442
    if-eqz p1, :cond_1

    .line 1444
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return v1

    .line 1447
    :catch_0
    move-exception v0

    .line 1448
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DisplayManagerService"

    const-string v3, "Unable to query projection service for permissions"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1451
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1456
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v1

    goto :goto_0
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1428
    if-eqz p2, :cond_1

    .line 1429
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1430
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1431
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1432
    .local v3, "n":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1433
    const/4 v5, 0x1

    .line 1438
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "n":Ljava/lang/String;
    .end local v4    # "packageNames":[Ljava/lang/String;
    :goto_1
    return v5

    .line 1431
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "n":Ljava/lang/String;
    .restart local v4    # "packageNames":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1438
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "n":Ljava/lang/String;
    .end local v4    # "packageNames":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1215
    if-nez p1, :cond_0

    .line 1216
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1218
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to connect to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1223
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->access$2400(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1227
    return-void

    .line 1225
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    .locals 16
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "surface"    # Landroid/view/Surface;
    .param p9, "flags"    # I

    .prologue
    .line 1319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1320
    .local v5, "callingUid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->validatePackageName(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1321
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "packageName must match the calling uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1323
    :cond_0
    if-nez p1, :cond_1

    .line 1324
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "appToken must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1326
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1327
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name must be non-null and non-empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1329
    :cond_2
    if-lez p5, :cond_3

    if-lez p6, :cond_3

    if-gtz p7, :cond_4

    .line 1330
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "width, height, and densityDpi must be greater than 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1334
    :cond_4
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_5

    .line 1335
    or-int/lit8 p9, p9, 0x10

    .line 1337
    :cond_5
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_6

    .line 1338
    and-int/lit8 p9, p9, -0x11

    .line 1341
    :cond_6
    if-eqz p2, :cond_8

    .line 1343
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$3100(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1344
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Invalid media projection"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :catch_0
    move-exception v13

    .line 1348
    .local v13, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "unable to validate media projection or flags"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1346
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result p9

    .line 1352
    :cond_8
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_9

    and-int/lit8 v2, p9, 0x10

    if-eqz v2, :cond_9

    .line 1354
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1355
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1361
    :cond_9
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_a

    .line 1362
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1363
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1369
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1371
    .local v14, "token":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    # invokes: Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    invoke-static/range {v2 .. v12}, Lcom/android/server/display/DisplayManagerService;->access$3200(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 1374
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public disconnectWifiDisplay()V
    .locals 3

    .prologue
    .line 1236
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1238
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->disconnectWifiDisplayInternal()V
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1242
    return-void

    .line 1240
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1411
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1414
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump DisplayManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    :goto_0
    return-void

    .line 1419
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1421
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/display/DisplayManagerService;->access$3600(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1262
    if-nez p1, :cond_0

    .line 1263
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1265
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to forget to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1270
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->forgetWifiDisplayInternal(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->access$2700(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    return-void

    .line 1272
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisplayIds()[I
    .locals 4

    .prologue
    .line 1161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1162
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1164
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->getDisplayIdsInternal(I)[I
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->access$1900(Lcom/android/server/display/DisplayManagerService;I)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1166
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 1147
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1148
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1150
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    invoke-static {v1, p1, v0}, Lcom/android/server/display/DisplayManagerService;->access$1800(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1152
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 3

    .prologue
    .line 1307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1309
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$3000(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public pauseWifiDisplay()V
    .locals 5

    .prologue
    .line 1278
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to pause a wifi display session"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1283
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->pauseWifiDisplayInternal()V
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2800(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1287
    return-void

    .line 1285
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;

    .prologue
    .line 1172
    if-nez p1, :cond_0

    .line 1173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1176
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1177
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1179
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;I)V
    invoke-static {v1, p1, v0}, Lcom/android/server/display/DisplayManagerService;->access$2000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1183
    return-void

    .line 1181
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;

    .prologue
    .line 1401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1403
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    invoke-static {v2, v3}, Lcom/android/server/display/DisplayManagerService;->access$3500(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1407
    return-void

    .line 1405
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 1246
    if-nez p1, :cond_0

    .line 1247
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1249
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to rename to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1254
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$2600(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1258
    return-void

    .line 1256
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .prologue
    .line 1381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1383
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/android/server/display/DisplayManagerService;->resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    invoke-static {v2, v3, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$3300(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1387
    return-void

    .line 1385
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resumeWifiDisplay()V
    .locals 5

    .prologue
    .line 1291
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v4, "Permission required to resume a wifi display session"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1296
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->resumeWifiDisplayInternal()V
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2900(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1300
    return-void

    .line 1298
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1393
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/android/server/display/DisplayManagerService;->setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    invoke-static {v2, v3, p2}, Lcom/android/server/display/DisplayManagerService;->access$3400(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1397
    return-void

    .line 1395
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startWifiDisplayScan()V
    .locals 6

    .prologue
    .line 1187
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v5, "Permission required to start wifi display scans"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1191
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1193
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(I)V
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->access$2200(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    return-void

    .line 1195
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public stopWifiDisplayScan()V
    .locals 6

    .prologue
    .line 1201
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v5, "Permission required to stop wifi display scans"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1205
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1207
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanInternal(I)V
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->access$2300(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1211
    return-void

    .line 1209
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method
